//
//  main.m
//  prog1
//
//  Created by Asriel on 2018/3/21.
//  Copyright © 2018年 ISS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GraphicObject.h"
#import "Rectangle.h"
#import "Circle.h"
#import "Triangle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        //init graphic objects
        
        Rectangle* rec1=[[Rectangle alloc] init];

        //[rec1 setWidth:10];
        //[rec1 setHeight:3];
        [rec1 setWidth:10 andHeight:3];
        [rec1 draw];
        
    }
    return 0;
}
