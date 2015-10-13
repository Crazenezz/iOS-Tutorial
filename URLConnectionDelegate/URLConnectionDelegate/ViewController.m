//
//  ViewController.m
//  URLConnectionDelegate
//
//  Created by Edward Edge on 9/7/15.
//  Copyright (c) 2015 Edge Asia (Indonesia). All rights reserved.
//

#import "ViewController.h"
#import "Request.h"
#import "DelegateObject.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)download:(UIButton *)sender {
    @autoreleasepool {
        
        Request *newRequest = [[Request alloc] init];
        NSDictionary *versionDict = [newRequest getVersionData];
    
        if(versionDict) {
            NSString *baseURL = [versionDict objectForKey:@"baseurl"];
        
            for(NSDictionary *versionData in [versionDict objectForKey:@"data"]) {
                @autoreleasepool {
                    NSString *fileName = [versionData objectForKey:@"file"];
                    NSString *url = [NSString stringWithFormat:@"%@%@", baseURL, fileName];
                    NSURLRequest *request = [NSURLRequest requestWithURL:
                        [NSURL URLWithString:url] cachePolicy:nil timeoutInterval:1000];
                
                    DelegateObject *objectDelegate = [[DelegateObject alloc]
                        initWithParams:fileName
                            :url
                            :[[versionDict objectForKey:@"total_files"] integerValue]];
     
                    NSURLConnection *connection = [[NSURLConnection alloc]
                        initWithRequest:request delegate:objectDelegate];
                }
            }
        }
    
    }
    
    NSLog(@"Button pressed");
}

@end
