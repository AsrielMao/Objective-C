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
        GraphicObject* graph=[[GraphicObject alloc] init];
        Rectangle* rec=[[Rectangle alloc] init];
        Circle* cir=[[Circle alloc] init];
        Triangle* tri=[[Triangle alloc] init];
        
        //try methods
        //set
        [graph setFillColor:12];
        [graph setFilled:YES];
        [graph setLineColor:27];
        [rec setWidth:10];
        [rec setHeight:6.18];
        [cir setRadius:3];
        [tri setSide1:3];
        [tri setSide2:4];
        [tri setSide3:5];
        //get
        NSLog(@"\nGraphic:\nfillColor = %d, filled = %@, lineColor = %d\n\n",graph.fillColor,graph.filled?@"Yes":@"No",graph.lineColor);
        
        NSLog(@"\nRectangle:\nwidth = %f, height = %f, area = %f, perimeter = %f\n\n",rec.width,rec.height,rec.area,rec.perimeter);
        
        NSLog(@"\nCircle:\nradius = %f, area = %f, perimeter = %f\n\n",cir.radius,cir.area,cir.perimeter);
        
        NSLog(@"\nTriangle:\nside1 = %f, side2 = %f, side3 = %f, area = %f, perimeter = %f\n\n",tri.side1,tri.side2,tri.side3,tri.area,tri.perimeter);
        
        NSLog(@"Hello, World!");
    }
    return 0;
}
