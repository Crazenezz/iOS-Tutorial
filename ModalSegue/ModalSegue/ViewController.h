//
//  ViewController.h
//  ModalSegue
//
//  Created by Edward Edge on 10/7/15.
//  Copyright © 2015 Edge Asia (Indonesia). All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *customModalButton;
@property (weak, nonatomic) IBOutlet UIButton *designableModalButton;

- (void)createCustomView;
- (void)openSearchView;

@end

