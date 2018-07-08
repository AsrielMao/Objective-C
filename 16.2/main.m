//
//  main.m
//  prog1
//
//  Created by Asriel on 2018/7/2.
//  Copyright © 2018年 ISS. All rights reserved.
//
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSFileManager *fm = [NSFileManager defaultManager];
        BOOL isDir, foundMatch;
        NSProcessInfo *proc = [NSProcessInfo processInfo];
        NSArray *args = [proc arguments];
        NSString *startPath, *searchString, *path;
        NSDirectoryEnumerator *dirEnum;
        
        if (args.count != 3){
            printf("Arguments Error\nUsage: $ myfind /path filename\n");
            return 1;
        }
        
        startPath = [args objectAtIndex:1];
        searchString = [args objectAtIndex:2];
        
        if ([fm fileExistsAtPath:startPath isDirectory:&isDir] == NO){
            printf("Start Path Error %s\n", [startPath UTF8String]);
            return 2;
        }
        
        NSRange foundRange;
        printf("Start Path: %s\nFile Name:  %s\nThe location is:\n", [startPath UTF8String], [searchString UTF8String]);
        dirEnum = [fm enumeratorAtPath:startPath];
        while ((path = [dirEnum nextObject]) != nil)
        {
            foundRange = [path rangeOfString:searchString options:NSCaseInsensitiveSearch];
            if (foundRange.length != 0)
            {
                printf("\t\t%s\n", [path UTF8String]);
                foundMatch = YES;
            }
        }
        if (foundMatch == NO)
        {
            printf("No matches found\n");
        }
        
    }
    return 0;
}
