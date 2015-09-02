//
//  Request.h
//  DownloadSample
//
//  Created by Edward Edge on 9/2/15.
//  Copyright (c) 2015 Edge Asia (Indonesia). All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Request : NSObject

@property (readonly) NSString *apiURL;

-(NSDictionary *)requestVersionData;
-(void)downloadFile:(NSString *)filePath;

@end