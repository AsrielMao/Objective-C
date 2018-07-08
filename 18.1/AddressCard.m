//
//  AddressCard.m
//  prog1
//
//  Created by Asriel on 2018/7/2.
//  Copyright © 2018年 ISS. All rights reserved.
//
#import "AddressCard.h"

@implementation AddressCard
@synthesize name, email;

-(void) setName: (NSString *) theName andEmail: (NSString *) theEmail{
    self.name = theName;
    self.email = theEmail;
}

-(NSComparisonResult) compareNames: (id) element{
    return [name compare: [element name]];
}

-(void) print{
    printf ("====================================\n");
    printf ("|                                  ￼|\n");
    printf ("|  %-31s |\n", [name UTF8String]);
    printf ("|  %-31s |\n", [email UTF8String]);
    printf ("|                                  ￼|\n");
    printf ("|                                  ￼|\n");
    printf ("|                                  ￼|\n");
    printf ("|      O                    O      ￼|\n");
    printf ("====================================\n");
}

-(id) copyWithZone: (NSZone *) zone{
    id newAddCard = [[[self class] allocWithZone: zone] init];
    [newAddCard setName: name andEmail: email];
    return newAddCard;
}

@end
