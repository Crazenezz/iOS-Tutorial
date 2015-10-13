//
//  ViewController.m
//  LayoutResearch
//
//  Created by Edward Edge on 10/6/15.
//  Copyright © 2015 Edge Asia (Indonesia). All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Setup center text field with animations and tap gesture
    [_searchTextField addTarget:self action:@selector(searchTextFieldTap)
        forControlEvents:UIControlEventEditingDidBegin];
    
    _searchTextField.placeholder = @"Placeholder...";
    _modalSearchTextField.placeholder = @"Placeholder...";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)searchTextFieldTap {
    [UIView animateWithDuration:.5
        animations:^{
            //_searchTextField.alpha = 0;
        }
        completion:^(BOOL finished) {
            if (finished) {
                // Show Level 2 view
            }
        }
    ];
}
@end
