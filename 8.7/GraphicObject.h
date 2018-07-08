//
//  GraphicObject.h
//  prog1
//
//  Created by Asriel on 2018/3/21.
//  Copyright © 2018年 ISS. All rights reserved.
//
#ifndef GraphicObject_h
#define GraphicObject_h
#import <Foundation/Foundation.h>

@interface GraphicObject : NSObject
{
    int fillColor;
    BOOL filled;
    int lineColor;
}
-(void) setFillColor:(int) color;
-(int) fillColor;
-(void) setFilled:(BOOL) fill;
-(BOOL) filled;
-(void) setLineColor:(int) color;
-(int) lineColor;

@end

@implementation GraphicObject


-(void) setFillColor:(int) color
{
    fillColor=color;
}
-(int) fillColor
{
    return fillColor;
}
-(void) setFilled:(BOOL) fill
{
    filled=fill;
}
-(BOOL) filled
{
    return filled;
}
-(void) setLineColor:(int) color
{
    lineColor=color;
}
-(int) lineColor
{
    return lineColor;
}

@end

#endif /* GraphicObject_h */


