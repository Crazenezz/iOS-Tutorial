//
//  ViewController.m
//  URLConnectionSample
//
//  Created by Edward Edge on 9/3/15.
//  Copyright (c) 2015 Edge Asia (Indonesia). All rights reserved.
//

#import "ViewController.h"
#import "Utils.h"

@interface ViewController ()

@end

@implementation ViewController

NSString *url;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    url = @"http://128.199.201.24/nutricia/"
        "data/assets/documents/1461-DHA-EFSA-2010.pdf";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)startDownload:(UIButton *)sender {
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

@end
