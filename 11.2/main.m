//
//  main.m
//  prog1
//
//  Created by Asriel on 2018/3/28.
//  Copyright © 2018年 ISS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        Fraction* f1=[[Fraction alloc] init];
        Fraction* f2=[[Fraction alloc] init];
        Fraction* f3=[[Fraction alloc] init];
        [f1 setTo:3 over:4];
        [f2 setTo:6 over:8];
        [f3 setTo:4 over:5];
        
        NSLog(@"");
        printf("f1 = ");[f1 print];
        printf("\nf2 = ");[f2 print];
        printf("\nf3 = ");[f3 print];
        printf("\n");
        
        NSLog(@"\nNow is testing isEqualTo method...");
        
        if([f1 isEqualTo:f2])
            printf("f1 is equal to f2\n");
        else
            printf("f1 is not equal to f2\n");
        if([f2 isEqualTo:f3])
            printf("f2 is equal to f3\n");
        else
            printf("f2 is not equal to f3\n");
        
        NSLog(@"\nNow is testing compare method...");
        printf("The result of [f1 compare:f2] is: %i\n",[f1 compare:f2]);
        printf("The result of [f2 compare:f3] is: %i\n",[f2 compare:f3]);
        printf("The result of [f3 compare:f2] is: %i\n",[f3 compare:f2]);
        
        
    }
    return 0;
}
