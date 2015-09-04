//
//  ViewController.m
//  DownloadSample
//
//  Created by Edward Edge on 9/2/15.
//  Copyright (c) 2015 Edge Asia (Indonesia). All rights reserved.
//

#import "ViewController.h"
#import "Request.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)downloadButton:(UIButton *)sender {
    Request *request = [[Request alloc] init];
    NSDictionary *versionDict = [request requestVersionData];
    
    if(versionDict) {
        NSString *baseURL = [versionDict objectForKey:@"baseurl"];
    
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
            NSLog(@"Downloading Started");
            for(NSDictionary *versionData in [versionDict objectForKey:@"data"]) {
                @autoreleasepool {
                    dispatch_async(dispatch_get_main_queue(), ^{
                        NSString *fileName = [versionData objectForKey:@"file"];
                        [request downloadFile:[NSString stringWithFormat:@"%@%@", baseURL, fileName]];
                    });
                }
            }
        });
    }
}

@end
