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
        NSString *path = [[NSBundle mainBundle]pathForResource:@"test" ofType:@"plist"];
        NSDictionary *myDict = [NSDictionary dictionaryWithContentsOfFile:path];
        for(NSString *dict in myDict){
            NSLog(@"%@ :\n%@",dict,[myDict objectForKey:dict]);
        }
    }
    return 0;
}
