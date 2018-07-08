//
//  AddressCard.m
//  prog1
//
//  Created by Asriel on 2018/7/2.
//  Copyright © 2018年 ISS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressCard.h"

@implementation AddressCard

{
    NSString *name;
    NSString *email;
}

-(void) setName: (NSString *) theName
{
    name = [NSString stringWithString:theName];
}

-(void) setEmail:(NSString *)theEmail
{
    email = [NSString stringWithString:theEmail];
}

-(NSString *) name
{
    return name;
}

-(NSString *) email
{
    return email;
}

-(void) print
{
    /*
    NSLog(@"====================================");
    NSLog(@"|                        |");
    NSLog(@"|  %-31s |", [name UTF8String]);
    NSLog(@"|  %-31s |", [email UTF8String]);
    NSLog(@"|                        |");
    NSLog(@"|                        |");
    NSLog(@"|                        |");
    NSLog(@"|   o                o   |");
    NSLog(@"====================================");
     */
    
    printf("====================================\n");
    printf("|                        |\n");
    printf("|  %-31s |\n", [name UTF8String]);
    printf("|  %-31s |\n", [email UTF8String]);
    printf("|                        |\n");
    printf("|                        |\n");
    printf("|                        |\n");
    printf("|   o                o   |\n");
    printf("====================================\n");
}
@end
