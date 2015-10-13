//
//  ModalBlurredSegue.m
//  ModalSegue
//
//  Created by Edward Edge on 10/9/15.
//  Copyright © 2015 Edge Asia (Indonesia). All rights reserved.
//

#import "ModalBlurredSegue.h"
#import "UIImage+ImageEffects.h"

@implementation ModalBlurredSegue

- (void)perform {
    UIViewController *sourceViewController = self.sourceViewController;
    UIViewController *destinationViewController = self.destinationViewController;
    
    UIView *sourceView = sourceViewController.view;
    UIView *destinationView = destinationViewController.view;
    
    destinationView.backgroundColor = [UIColor clearColor];
    
    float width = sourceView.frame.size.width;
    float height = sourceView.frame.size.height;
    
    UIImage *blurredSourceImage = [ModalBlurredSegue blurredImageOfView:sourceView];
    UIImageView *blurredImageView = [[UIImageView alloc] initWithFrame: CGRectMake(0.0, height, width, 0.0)];
    
    if (blurredSourceImage == nil) {
        // fallback incase blurred image fails
        blurredImageView.backgroundColor = [UIColor blackColor];
    }
    
    blurredImageView.clipsToBounds = YES;
    blurredImageView.contentMode = UIViewContentModeBottom;
    blurredImageView.image = blurredSourceImage;
    
    [sourceView addSubview:blurredImageView];
    [sourceView addSubview:destinationView];
    
    CGPoint originalCenter = destinationView.center;
    destinationView.center = CGPointMake(originalCenter.x, originalCenter.y+sourceView.frame.size.height);
    
    [UIView animateWithDuration:0.6 delay:0.0 usingSpringWithDamping:0.8 initialSpringVelocity:0 options:UIViewAnimationOptionCurveEaseIn
                     animations:^{
                         destinationView.center = originalCenter;
                         blurredImageView.frame = sourceView.frame;
                     }
                     completion:^(BOOL finished){
                         [blurredImageView removeFromSuperview];
                         [destinationView insertSubview:blurredImageView atIndex:0];
                         [sourceViewController presentViewController:destinationViewController animated:NO completion:nil]; // present VC
                     }
     ];
}

+ (UIImage *) blurredImageOfView:(UIView *)view {
    UIGraphicsBeginImageContextWithOptions(view.frame.size, YES, [[UIScreen mainScreen] scale]);
    
    BOOL success = [view drawViewHierarchyInRect:CGRectMake(0.0, 0.0, view.frame.size.width, view.frame.size.height) afterScreenUpdates:NO];
    
    if (success) {
        UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        
        UIImage *blurredImage = [image applyDarkEffect];
        return blurredImage;
    } else {
        return  nil;
    }
}

@end
