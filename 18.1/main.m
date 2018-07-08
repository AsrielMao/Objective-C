//
//  main.m
//  prog1
//
//  Created by Asriel on 2018/7/3.
//  Copyright © 2018年 ISS. All rights reserved.
//
#import <Foundation/Foundation.h>
#import "AddressBook.h"

int main (int argc, char * argv[]) {
    @autoreleasepool {
        NSString *aName = @"Julia Kochan";
        NSString *aEmail = @"jewls337@axlc.com";
        NSString *bName = @"Tony Iannino";
        NSString *bEmail = @"tony.iannino@techfitness.com";
        NSString *cName = @"Stephen Kochan";
        NSString *cEmail = @"steve@classroomM.com";
        NSString *dName = @"Jamie Baker";
        NSString *dEmail = @"jbaker@classroomM.com";
        
        AddressCard *card1 = [[AddressCard alloc] init];
        AddressCard *card2 = [[AddressCard alloc] init];
        AddressCard *card3 = [[AddressCard alloc] init];
        AddressCard *card4 = [[AddressCard alloc] init];
        AddressCard *card5 = [[AddressCard alloc] init];
        
        AddressBook *myBook = [AddressBook alloc];
        AddressBook *myBookCopy;
        
        [card1 setName: aName andEmail: aEmail];
        [card2 setName: bName andEmail: bEmail];
        [card3 setName: cName andEmail: cEmail];
        [card4 setName: dName andEmail: dEmail];
        card5 = [card4 copy];
        
        myBook = [myBook initWithName: @"Linda’s Address Book"];
        
        [myBook addCard: card1];
        [myBook addCard: card2];
        [myBook addCard: card3];
        [myBook addCard: card4];
        [myBook addCard: card5];
        
        [myBook list];
        
        [myBook sort];
        
        myBookCopy = [myBook copy];
        
        [myBookCopy list];
        
        [myBook removeCard: card1];
        [myBook list];
        [myBookCopy list];
        
        [card5 setName: bName andEmail: aEmail];
        [myBookCopy setBookName: @"Linda’s Old Address Book"];
        [myBook addCard: card4];
        
        [myBook list];
        [myBookCopy list];
    }
    return 0;
}
