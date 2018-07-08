//
//  Circle.h
//  prog1
//
//  Created by Asriel on 2018/3/21.
//  Copyright © 2018年 ISS. All rights reserved.
//

#ifndef Circle_h
#define Circle_h
#import <Foundation/Foundation.h>
#import "GraphicObject.h"

@interface Circle : GraphicObject

@property float radius;

-(float) area;
-(float) perimeter;

@end

@implementation Circle

@synthesize radius;

-(float) area
{
    return 3.14159*radius*radius;
}

-(float) perimeter
{
    return 6.28318*radius;
}

@end

#endif /* Circle_h */
