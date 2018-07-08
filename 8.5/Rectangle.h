//
//  Rectangle.h
//  prog1
//
//  Created by Asriel on 2018/3/21.
//  Copyright © 2018年 ISS. All rights reserved.
//

#ifndef Rectangle_h
#define Rectangle_h
#import <Foundation/Foundation.h>
#import "GraphicObject.h"

@interface Rectangle : GraphicObject
-(void) setWidth:(float) w;
-(float) width;
-(void) setHeight:(float) h;
-(float) height;

-(float) area;
-(float) perimeter;

@end

@implementation Rectangle
{
    float height,width;
}


-(void) setWidth:(float) w
{
    width=w;
}
-(float) width
{
    return width;
}
-(void) setHeight:(float) h
{
    height=h;
}
-(float) height
{
    return height;
}

-(float) area
{
    return height*width;
}
-(float) perimeter
{
    return 2*(height+width);
}


@end


#endif /* Rectangle_h */
