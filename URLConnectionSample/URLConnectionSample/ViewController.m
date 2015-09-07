//
//  ViewController.m
//  URLConnectionSample
//
//  Created by Edward Edge on 9/3/15.
//  Copyright (c) 2015 Edge Asia (Indonesia). All rights reserved.
//

#import "ViewController.h"
#import "Utils.h"
#import "Request.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)startDownload:(UIButton *)sender {
    
    @autoreleasepool {
        Request *mainRequest = [[Request alloc] init];
        NSDictionary *versionDict = [mainRequest requestVersionData];
        
        if(versionDict) {
            NSString *baseURL = [versionDict objectForKey:@"baseurl"];
            
            for(NSDictionary *versionData in [versionDict objectForKey:@"data"]) {
                NSString *fileName = [versionData objectForKey:@"file"];
                NSString *url = [NSString stringWithFormat:@"%@%@", baseURL, fileName];
                NSURLRequest *request = [NSURLRequest requestWithURL:
                                         [NSURL URLWithString:url]];
                
                @autoreleasepool {
                    [NSURLConnection sendAsynchronousRequest:request queue:
                     [NSOperationQueue mainQueue] completionHandler:
                     ^(NSURLResponse *response, NSData *data, NSError *connectionError) {
                         
                         NSArray *paths = NSSearchPathForDirectoriesInDomains(
                            NSDocumentDirectory, NSUserDomainMask, YES);
                         
                         NSString *documentsDirectory = [paths objectAtIndex:0];
                         NSString *filePath = [url stringByReplacingOccurrencesOfString:
                            @"http://128.199.201.24/nutricia/data/" withString:@""];
                         
                         [[[Utils alloc]init] createDirectory:filePath];
                         
                         NSString *downloadedFilePath = [NSString stringWithFormat:
                            @"%@/data/%@", documentsDirectory, filePath];
                         
                         [data writeToFile:downloadedFilePath atomically:YES];
                         NSLog(@"Download file: %@", downloadedFilePath);
                     }];
                }
            }
        }
    }
}

@end
