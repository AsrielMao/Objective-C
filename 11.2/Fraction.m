//
//  Fraction.m
//  prog1
//
//  Created by Asriel on 2018/3/28.
//  Copyright © 2018年 ISS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

@implementation Fraction

@synthesize numerator,denominator;

-(void) setTo: (int) n over:(int) d
{
    numerator=n;
    denominator=d;
}
-(double) convertToNum
{
    return (double)numerator/denominator;
}
-(void) reduce
{
    int u=numerator,v=denominator,temp=0;
    
    while(v!=0)
    {
        temp=u%v;
        u=v;
        v=temp;
    }
    numerator /= u;
    denominator /=u;
}
-(void) print
{
    printf("%d / %d",numerator,denominator);
}

@end

@implementation Fraction(Comparison)

-(BOOL) isEqualTo:(Fraction *)f
{
    Fraction* f1=[[Fraction alloc] init];
    Fraction* f2=[[Fraction alloc] init];
    [f1 setTo:numerator over:denominator];
    [f2 setTo:f.numerator over:f.denominator];
    
    [f1 reduce];
    [f2 reduce];
    
    return f1.numerator==f2.numerator&&f1.denominator==f2.denominator;
}

-(int) compare:(Fraction *)f
{
    double d1=[self convertToNum];
    double d2=[f convertToNum];
    
    return d1>d2? 1: d1<d2? -1:0;
}

@end
