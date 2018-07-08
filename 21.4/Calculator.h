//
//  Calculator.h
//  prog1
//
//  Created by Asriel on 2018/3/28.
//  Copyright © 2018年 ISS. All rights reserved.
//

#import<Foundation/Foundation.h>

@interface Calculator : NSObject

@property double accumulator;

-(void) clear;

@end

@interface Calculator(Arithmetically)

-(void) add:(double) value;
-(void) substract:(double) value;
-(void) multiply:(double) value;
-(void) divide:(double) value;

@end

@interface Calculator(Trig)

-(double) sin;
-(double) cos;
-(double) tan;

@end
