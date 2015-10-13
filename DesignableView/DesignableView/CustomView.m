//
//  CustomView.m
//  DesignableView
//
//  Created by Edward Edge on 10/9/15.
//  Copyright © 2015 Edge Asia (Indonesia). All rights reserved.
//

#import "CustomView.h"

@implementation CustomView

- (void)layoutSubviews {
    [super layoutSubviews];
    
    /*UIButton *showModalButton = [[UIButton alloc] init];
    [showModalButton setTitle:@"Show" forState:UIControlStateNormal];
    [showModalButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    NSLayoutConstraint *equal_w = [NSLayoutConstraint constraintWithItem:showModalButton
                                                                attribute:NSLayoutAttributeWidth
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:nil
                                                                attribute:0
                                                               multiplier:1.0
                                                                 constant:70];
    NSLayoutConstraint *equal_h = [NSLayoutConstraint constraintWithItem:showModalButton
                                                                attribute:NSLayoutAttributeHeight
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:nil
                                                                attribute:0
                                                               multiplier:1.0
                                                                 constant:28];
    
    [showModalButton addConstraints:@[equal_w, equal_h]];*/
    
    CAShapeLayer *backgroundLayer = [[CAShapeLayer alloc] init];
    
    backgroundLayer = [[CAShapeLayer alloc] init];
}

@end
