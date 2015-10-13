//
//  DelegateObject.m
//  URLConnectionDelegate
//
//  Created by Edward Edge on 9/8/15.
//  Copyright (c) 2015 Edge Asia (Indonesia). All rights reserved.
//

#import "DelegateObject.h"
#import "Utils.h"

@implementation DelegateObject

NSString *filePath;
NSString *documentsDirectory;
int counterReceived = 0;
int counterError = 0;

- (DelegateObject *)initWithParams:(NSString *)fileName :(NSString *)url :(int)totalFiles {
    self = [super init];
    
    if (self) {
        self.fileName = fileName;
        self.url = url;
        self.totalFiles = totalFiles;
    }
    
    return self;
}

- (void)connection:(NSURLConnection*)connection didReceiveResponse:(NSURLResponse *)response {
    @autoreleasepool {
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(
        NSDocumentDirectory, NSUserDomainMask, YES);
    
    documentsDirectory = [paths objectAtIndex:0];
    NSString *url = self.url;
    filePath = [url stringByReplacingOccurrencesOfString:
        @"http://128.199.201.24/nutricia/data/" withString:@""];
    
    [[[Utils alloc]init] createDirectory:filePath];
    
    //NSLog(@"Did Receive Response %@", response);
    }
}

- (void)connection:(NSURLConnection*)connection didReceiveData:(NSData*)data {
    @autoreleasepool {
        
    [self.receivedData appendData:data];
    //NSLog(@"Append data to object Mutable Data from %@", self.fileName);
    }
}

- (void)connection:(NSURLConnection*)connection didFailWithError:(NSError*)error {
    @autoreleasepool {
    
    NSLog(@"Failed to download: %@, with erorr: %@", self.fileName, error);
    counterError++;
    }
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection {
    @autoreleasepool {
    
    NSString *downloadedFilePath = [NSString stringWithFormat:
        @"%@/data/%@", documentsDirectory, filePath];
    
    [self.receivedData writeToFile:downloadedFilePath atomically:YES];
    
    counterReceived++;
    if(self.totalFiles == (counterReceived + counterError))
        NSLog(@"Download Finished, total %d file(s), succeed %d file(s), error %d file(s)", self.totalFiles, counterReceived, counterError);
    //NSLog(@"Download file %@ to %@", self.fileName, downloadedFilePath);
    }
}

@end
