//
//  ViewController.h
//  LayoutResearch
//
//  Created by Edward Edge on 10/6/15.
//  Copyright © 2015 Edge Asia (Indonesia). All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *searchTextField;
@property (weak, nonatomic) IBOutlet UITextField *modalSearchTextField;
@property (weak, nonatomic) IBOutlet UIButton *cancelButton;

- (void)searchTextFieldTap;

@end

