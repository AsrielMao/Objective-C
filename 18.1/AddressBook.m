//
//  AddressBook.m
//  prog1
//
//  Created by Asriel on 2018/7/2.
//  Copyright © 2018年 ISS. All rights reserved.
//#import "AddressBook.h"

@implementation AddressBook
@synthesize bookName, book;

-(id) initWithName: (NSString *) name{
    self = [super init];
    if (self) {
        bookName = [NSString stringWithString: name];
        book = [NSMutableArray array];
    }
    return self;
}

-(id) init{
    return [self initWithName: @"NoName"];
}

-(void) addCard: (AddressCard *) theCard{
    [book addObject: theCard];
}

-(void) removeCard: (AddressCard *) theCard{
    [book removeObjectIdenticalTo: theCard];
}

-(NSUInteger) entries{
    return [book count];
}

-(AddressCard *) lookup: (NSString *) theName;{
    for (AddressCard *nextCard in book)
        if ([nextCard.name caseInsensitiveCompare: theName] == NSOrderedSame )
            return nextCard;
    return nil;
}

-(void) sort{
    [book sortUsingComparator: ^(id obj1, id obj2) { return [[obj1 name] compare: [obj2 name]]; } ];
}

-(void) list{
    printf ("==== Contents of: %-29s ====\n", [bookName UTF8String]);
    for (AddressCard *theCard in book)
        printf ("%-20s %-32s\n", [theCard.name UTF8String], [theCard.email UTF8String]);
    printf ("==================================================\n\n");
}

-(id) copyWithZone: (NSZone *) zone{
    id newAddBook = [[[self class] allocWithZone: zone] init];
    [newAddBook setBookName: bookName];
    
    for (AddressCard *nextCard in book) {
        [newAddBook addCard: [nextCard copy]];
    }
    
    return newAddBook;
}

@end
