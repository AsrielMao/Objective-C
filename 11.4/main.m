//
//  main.m
//  prog1
//
//  Created by Asriel on 2018/3/28.
//  Copyright © 2018年 ISS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Calculator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        Calculator *myCal=[[Calculator alloc] init];
        
        myCal.accumulator=10;
        
        [myCal add:10];
        [myCal substract:5];
        [myCal multiply:2];
        [myCal divide:3];
        
        double sin10 = [myCal sin];
        double cos10 = [myCal cos];
        double tan10 = [myCal tan];
        
        NSLog(@"sin10 = %g, cos10 = %g, tan10 = %g",sin10, cos10, tan10);
        
    }
    return 0;
}
