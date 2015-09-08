//
//  DelegateObject.h
//  URLConnectionDelegate
//
//  Created by Edward Edge on 9/8/15.
//  Copyright (c) 2015 Edge Asia (Indonesia). All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DelegateObject : NSObject

@property NSString *fileName;
@property NSMutableData *receivedData;
@property NSString *url;
@property int totalFiles;

@end
