//
//  SampleProtocol.h
//  SampleDelegate
//
//  Created by Edward Edge on 9/3/15.
//  Copyright (c) 2015 Edge Asia (Indonesia). All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SampleProtocolDelegate.h"

@interface SampleProtocol : NSObject
{
    // Delegate to respond back
    id <SampleProtocolDelegate> _delegate;
}

@property (nonatomic, strong) id delegate;

- (void)startSampleProcess; // Instance method

@end
