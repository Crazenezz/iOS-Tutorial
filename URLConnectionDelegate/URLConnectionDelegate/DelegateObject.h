//
//  DelegateObject.h
//  URLConnectionDelegate
//
//  Created by Edward Edge on 9/8/15.
//  Copyright (c) 2015 Edge Asia (Indonesia). All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DelegateObject : NSObject

@property (assign) NSString *fileName;
@property (assign) NSMutableData *receivedData;
@property (assign) NSString *url;
@property (assign) int totalFiles;

- (DelegateObject *)initWithParams:(NSString *)fileName :(NSString *)url :(int)totalFiles;

@end
