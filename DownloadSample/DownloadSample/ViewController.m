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

    // Create button from Controller
    /*UIButton *downloadButton = [UIButton buttonWithType:UIButtonTypeSystem];
    [downloadButton setTitle:@"Start Download" forState:UIControlStateNormal];
    [downloadButton sizeToFit];
    
    // Set center based on width, heigth on 60
    downloadButton.center = CGPointMake(self.view.frame.size.width / 2, 60);
    
    // Set Event Pressed
    [downloadButton addTarget:self action:@selector(downloadButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    
    // Set button on view
    [self.view addSubview:downloadButton];*/
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*- (void)downloadButtonPressed:(UIButton *)button {
    NSLog(@"Download Button Pressed");
}*/

- (IBAction)downloadButton:(UIButton *)sender {
    Request *request = [[Request alloc] init];
    NSDictionary *versionDict = [request requestVersionData];
    
    if(versionDict) {
        NSString *baseURL = [versionDict objectForKey:@"baseurl"];
        
        dispatch_group_t group = dispatch_group_create();
        dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0);
        
        dispatch_semaphore_t downloadSema = dispatch_semaphore_create(5);
        
        dispatch_group_async(group, queue, ^{
            for(NSDictionary *versionData in [versionDict objectForKey:@"data"]) {
                @autoreleasepool {
                    dispatch_semaphore_wait(downloadSema, DISPATCH_TIME_FOREVER);
                    
                    NSString *fileName = [versionData objectForKey:@"file"];
                    [request downloadFile:[NSString stringWithFormat:@"%@%@", baseURL, fileName]];
                
                }
            }
        });
        
        downloadSema = nil;
    }
}

@end
