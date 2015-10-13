//
//  ViewController.m
//  ModalSegue
//
//  Created by Edward Edge on 10/7/15.
//  Copyright © 2015 Edge Asia (Indonesia). All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [_designableModalButton addTarget:self action:@selector(createCustomView) forControlEvents:UIControlEventTouchUpInside];
    //[_customModalButton addTarget:self action:@selector(openSearchView) forControlEvents:UIControlEventTouchUpInside];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)openSearchView {
    /*UIVisualEffect *blurEffect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleLight];
    UIVisualEffectView *blurEffectView = [[UIVisualEffectView alloc] initWithEffect:blurEffect];
    [blurEffectView setFrame:self.view.bounds];
    
    [self.view insertSubview:blurEffectView atIndex:0];*/
    
    NSLog(@"Open Search View...");
    NSLog(@"%@", self.view.subviews);
}

- (void)createCustomView {
    // Setup Blur Effect
    /*UIBlurEffect *blurEffect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleLight];
    UIVisualEffectView *blurEffectView = [[UIVisualEffectView alloc] initWithEffect:blurEffect];
    blurEffectView.frame = self.view.bounds;
    blurEffectView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    
    // Search Text Field
    //UITextField *searchTextField = [[UITextField alloc] init];
    
    // Cancel Button
    UIButton *cancelButton = [[UIButton alloc] init];
    [cancelButton setBackgroundColor:[UIColor clearColor]];
    [cancelButton setTitle:@"Cancel" forState:UIControlStateNormal];
    [cancelButton sizeToFit];
    [cancelButton setCenter:self.view.center];
    
    // Setup Custom View
    UIView *customView = [[UIView alloc] init];
    
    [customView addSubview:blurEffectView];
    
    //[customView addSubview:searchTextField];
    [customView addSubview:cancelButton];
    
    [self.view addSubview:customView];
    
    NSLog(@"%@", self.view.subviews);*/
    
    UIVisualEffect *blurEffect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleLight];
    UIVisualEffectView *blurEffectView = [[UIVisualEffectView alloc] initWithEffect:blurEffect];
    [blurEffectView setFrame:self.view.bounds];
    
    [self.view addSubview:blurEffectView];
}

@end
