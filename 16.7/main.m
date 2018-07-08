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
        NSFileHandle *inFile, *outFile;
        NSData *buffer;
        
        inFile = [NSFileHandle fileHandleForReadingAtPath: @"/Users/chief/Music/网易云音乐/K2 SOUND - fairy stage.mp3"];
        
        if (inFile == nil){
        printf("Open Failed\n");
            return 1;
        }
        
        outFile = [NSFileHandle fileHandleWithStandardOutput];
        
        while ([buffer = [inFile readDataOfLength: 128] length] > 0)
            [outFile writeData: buffer];

        [inFile closeFile];  
        [outFile closeFile];
    }
    return 0;
}
