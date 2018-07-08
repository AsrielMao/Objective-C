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
        
        AddressBook *myBook = [AddressBook alloc];
        
        [card1 setName: aName andEmail: aEmail];
        [card2 setName: bName andEmail: bEmail];
        [card3 setName: cName andEmail: cEmail];
        [card4 setName: dName andEmail: dEmail];
        
        myBook = [myBook initWithName: @"Linda’s Address Book"];
        
        [myBook addCard: card1];
        [myBook addCard: card2];
        [myBook addCard: card3];
        [myBook addCard: card4];
        
        [myBook sort];
        if([NSKeyedArchiver archiveRootObject:myBook toFile:@"addrbook.arch"]==NO)
            printf("archiving failed");
        
        NSProcessInfo *proc = [NSProcessInfo processInfo];
        NSArray *args = [proc arguments];
        
        if(argc != 3)
        {
            printf("Usage: %s lookup name\n", [[proc processName] UTF8String]);
            return 1;
        }
        
        NSString *search = [args objectAtIndex: 2];
        AddressBook *query;
        AddressBook *archivedBook = [NSKeyedUnarchiver unarchiveObjectWithFile: @"addrbook.arch"];
        
        if(!archivedBook)
        {
            printf("Reading of adrbook.arch to AddressBook failed!\n");
            return 2;
        }
        
        if ((query = [archivedBook lookup: search]) != nil)
            [query list];
        else
            printf("%s not found!\n", [search UTF8String]);
        
        printf("%lu total entries:\n", [archivedBook entries]);
        [archivedBook list];
    }
    return 0;
}  
