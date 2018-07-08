//
//  Fraction.h
//  prog1
//
//  Created by Asriel on 2018/3/28.
//  Copyright © 2018年 ISS. All rights reserved.
//

@interface Fraction : NSObject

@property int numerator, denominator;

-(void) setTo: (int) n over:(int) d;
-(double) convertToNum;
-(void) reduce;
-(void) print;

@end


@interface Fraction(Comparison)

-(BOOL) isEqualTo: (Fraction*) f;
-(int) compare: (Fraction*) f;

@end
