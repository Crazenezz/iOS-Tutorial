//
//  ModelController.h
//  HelloPageView
//
//  Created by Edward Edge on 10/5/15.
//  Copyright © 2015 Edge Asia (Indonesia). All rights reserved.
//

#import <UIKit/UIKit.h>

@class DataViewController;

@interface ModelController : NSObject <UIPageViewControllerDataSource>

- (DataViewController *)viewControllerAtIndex:(NSUInteger)index storyboard:(UIStoryboard *)storyboard;
- (NSUInteger)indexOfViewController:(DataViewController *)viewController;

@end

