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
        Rectangle* rec2=[[Rectangle alloc] init];

        [rec1 setWidth:250];
        [rec1 setHeight:75];
        [rec1 setOrigin:200 andY:420];
        
        //NSLog(@"width= %f, height= %f, origin= (%f, %f)",rec1.width,rec1.height,rec1.origin.x,rec1.origin.y);
        
        [rec2 setWidth:100];
        [rec2 setHeight:180];
        [rec2 setOrigin:400 andY:300];

        Rectangle* resultRec=[[Rectangle alloc] init];
        resultRec=[rec1 intersect:rec2];

        
        NSLog(@"\nRectangle:\norigin=(%f,%f)\nwidth = %f, height = %f, area = %f, perimeter = %f\n\n",resultRec.origin.x,resultRec.origin.y,resultRec.width,resultRec.height,resultRec.area,resultRec.perimeter);
        
    }
    return 0;
}
