//
//  ViewController.h
//  SampleDelegate
//
//  Created by Edward Edge on 9/3/15.
//  Copyright (c) 2015 Edge Asia (Indonesia). All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SampleProtocol.h"

@interface ViewController : UIViewController<SampleProtocolDelegate>
{
    IBOutlet UILabel *myLabel;
}
@end

