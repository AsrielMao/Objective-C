//
//  Calculator.m
//  prog1
//
//  Created by Asriel on 2018/3/29.
//  Copyright © 2018年 ISS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Calculator.h"

@implementation Calculator

@synthesize accumulator;

-(void) clear
{
    accumulator=0;
}

@end

@implementation Calculator(Arithmetically)

-(void) add:(double)value
{
    NSLog(@"%g + %g = %g",accumulator,value,accumulator+value);
    accumulator += value;
}

-(void) substract:(double)value
{
    NSLog(@"%g - %g = %g",accumulator,value,accumulator-value);
    accumulator -= value;
}

-(void) multiply:(double)value
{
    NSLog(@"%g * %g = %g",accumulator,value,accumulator*value);
    accumulator *= value;
}

-(void) divide:(double)value
{
    
    NSLog(@"%g / %g = %g",accumulator,value,accumulator/value);
    accumulator /= value;
}

@end

@implementation Calculator(Trig)

-(double) sin
{
    NSLog(@"sin %g = %g ",accumulator, sin(accumulator));
    return sin(accumulator);
}
-(double) cos
{
    NSLog(@"cos %g = %g ",accumulator, cos(accumulator));
    return cos(accumulator);
}
-(double) tan
{
    NSLog(@"tan %g = %g ",accumulator, tan(accumulator));
    return tan(accumulator);
}

@end
