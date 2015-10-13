//
//  DismissSegue.m
//  ModalSegue
//
//  Created by Edward Edge on 10/7/15.
//  Copyright © 2015 Edge Asia (Indonesia). All rights reserved.
//

#import "DismissSegue.h"

@implementation DismissSegue

- (void)perform {
    UIViewController *sourceViewController = self.sourceViewController;
    [sourceViewController.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}

@end
