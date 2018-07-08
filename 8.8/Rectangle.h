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
#import "XYPoint.h"

@interface Rectangle : GraphicObject
-(void) setWidth:(float) w;
-(float) width;
-(void) setHeight:(float) h;
-(float) height;
-(void) setWidth:(float)w andHeight:(float)h;

-(float) area;
-(float) perimeter;

-(void) setOrigin:(float) nx andY:(float) ny;
-(void) setOrigin:(XYPoint*) poi;
-(XYPoint*) origin;

-(BOOL) containsPoint:(XYPoint*) p;

-(void) draw;

@end

@implementation Rectangle
{
    float height,width;
    XYPoint* origin;
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

-(void) setWidth:(float)w andHeight:(float)h
{
    width=w;
    height=h;
}

-(float) area
{
    return height*width;
}
-(float) perimeter
{
    return 2*(height+width);
}

-(void) setOrigin:(float) nx andY:(float) ny
{
    if(!origin)
        origin=[[XYPoint alloc] init];
    
    [origin setX:nx];
    [origin setY:ny];
}
-(void) setOrigin:(XYPoint*) poi
{
    if(!origin)
        origin=[[XYPoint alloc] init];
    origin=poi;
}
-(XYPoint*) origin
{
    return origin;
}

-(BOOL) containsPoint:(XYPoint*) p
{
    if(p.x>=origin.x&&p.x<origin.x+width&&p.y>=origin.y&&p.y<origin.y+height)
        return YES;
    else
        return NO;
}

-(Rectangle*) intersect:(Rectangle*) newRec
{
    
    XYPoint* p1=origin;
    XYPoint* p2=[[XYPoint alloc] init];
    XYPoint* p3=[[XYPoint alloc] init];
    XYPoint* p4=[[XYPoint alloc] init];
    
    [p2 setX:p1.x];[p2 setY:p1.y+height];
    [p3 setX:p1.x+width];[p3 setY:p1.y+height];
    [p4 setX:p1.x+width];[p4 setY:p1.y];
    
    //NSLog(@"p1=(%f,%f),p2=(%f,%f),p3=(%f,%f),p4=(%f,%f)",p1.x,p1.y,p2.x,p2.y,p3.x,p3.y,p4.x,p4.y);
    
    Rectangle* resultRec=[[Rectangle alloc] init];
    
    if([newRec containsPoint:p1])
    {
        if([newRec containsPoint:p3]){
            [resultRec setOrigin:p1];
            [resultRec setWidth:width];
            [resultRec setHeight:height];
            return resultRec;
        }
        else if ([newRec containsPoint:p2]){
            [resultRec setOrigin:p1];
            [resultRec setWidth:newRec.width-(origin.x-newRec.origin.x)];
            [resultRec setHeight:height];
            return resultRec;
        }
        else if ([newRec containsPoint:p4]){
            [resultRec setOrigin:p1];
            [resultRec setWidth:width];
            [resultRec setHeight:newRec.height-(origin.y-newRec.origin.y)];
            return resultRec;
        }
            
    }
    else if ([newRec containsPoint:p2])
    {
        if([newRec containsPoint:p3]){
            [resultRec setOrigin:origin.x andY:newRec.origin.y];
            [resultRec setWidth:width];
            [resultRec setHeight:origin.y-newRec.origin.y];
            return resultRec;
        }
        else{
            [resultRec setOrigin:origin.x andY:newRec.origin.y];
            [resultRec setWidth:newRec.width-(origin.x-newRec.origin.x)];
            [resultRec setHeight:origin.y-newRec.origin.y];
            return resultRec;
        }
    }
    else if ([newRec containsPoint:p3])
    {
        if([newRec containsPoint:p4]){
            [resultRec setOrigin:newRec.origin.x andY:origin.y];
            [resultRec setWidth:width-(newRec.origin.x-origin.x)];
            [resultRec setHeight:height];
            return resultRec;
        }
        else{
            [resultRec setOrigin:newRec.origin];
            [resultRec setWidth:p3.x-newRec.origin.x];
            [resultRec setHeight:p3.y-newRec.origin.y];
            return resultRec;
        }
    }
    else if ([newRec containsPoint:p4])
    {
        [resultRec setOrigin:newRec.origin.x andY:p4.y];
        [resultRec setWidth:p4.x-newRec.origin.x];
        [resultRec setHeight:newRec.height-(origin.y-newRec.origin.y)];
        return resultRec;
    }
    
    return NULL;
}

-(void) draw
{
    for(int i=0;i<width;i++)
        printf("-");
    for(int i=0;i<height;i++)
    {
        printf("\n|");
        for(int j=1;j<width-1;j++)
            printf(" ");
        printf("|");
    }
    printf("\n");
    for(int i=0;i<width;i++)
        printf("-");
    printf("\n");
    
}

@end


#endif /* Rectangle_h */
