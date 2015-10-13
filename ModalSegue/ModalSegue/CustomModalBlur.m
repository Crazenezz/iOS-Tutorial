//
//  CustomModalBlur.m
//  ModalSegue
//
//  Created by Edward Edge on 10/7/15.
//  Copyright © 2015 Edge Asia (Indonesia). All rights reserved.
//

#import "CustomModalBlur.h"

@implementation CustomModalBlur

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (CustomModalBlur *)init {
    self = [super init];
    
    UIBlurEffect * blurEffect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleLight];
    UIVisualEffectView *modalView = [[UIVisualEffectView alloc] initWithEffect:blurEffect];
    self.frame = modalView.bounds;
    
    NSLog(@"Add blur effect...");
    
    return self;
}

@end
