//
//  Triangle.h
//  prog1
//
//  Created by Asriel on 2018/3/21.
//  Copyright © 2018年 ISS. All rights reserved.
//

#ifndef Triangle_h
#define Triangle_h
#import<Foundation/Foundation.h>
#import"GraphicObject.h"

@interface Triangle : GraphicObject

@property float side1,side2,side3;

-(float) area;
-(float) perimeter;

@end

@implementation Triangle

@synthesize side1,side2,side3;

-(float) area
{
    float p=(side1+side2+side3)/2;
    float ar=sqrt(p*(p-side1)*(p-side2)*(p-side3));
    return ar;
}
-(float) perimeter
{
    return side1+side2+side3;
}

@end

#endif /* Triangle_h */
