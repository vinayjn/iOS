//
//  main.m
//  CommandLineTest
//
//  Created by Vinay on 12/17/14.
//  Copyright (c) 2014 vinay. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (ExtendedString)

+(NSString *)getInvertedString:(NSString*)input;

@end

@implementation NSString (ExtendedString)

+(NSString*)getInvertedString:(NSString*)input{
    NSString *output;
    for (int i=(int)[input length]-1; i>=0; i--) {
        output = [NSString stringWithFormat:@"%@%c",output,[input characterAtIndex:i]];
    }
    
    return output;
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"%@",[NSString getInvertedString: @"Hello, World!"]);
    
    
    }
    return 0;
}
