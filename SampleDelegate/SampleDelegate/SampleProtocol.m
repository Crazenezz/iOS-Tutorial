//
//  SampleProtocol.m
//  SampleDelegate
//
//  Created by Edward Edge on 9/3/15.
//  Copyright (c) 2015 Edge Asia (Indonesia). All rights reserved.
//

#import "SampleProtocol.h"

@implementation SampleProtocol

- (void)startSampleProcess {
    [NSTimer scheduledTimerWithTimeInterval:3.0 target:self.delegate
        selector:@selector(processCompleted) userInfo:nil repeats:NO];
}

@end
