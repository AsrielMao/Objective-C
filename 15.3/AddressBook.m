//
//  AddressBook.m
//  prog1
//
//  Created by Asriel on 2018/7/2.
//  Copyright © 2018年 ISS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressBook.h"

@implementation AddressBook
@synthesize bookName, book;

-(instancetype) initWithName:(NSString *)name
{
    self = [super init];
    
    if (self)
    {
        bookName = [NSString stringWithString:name];
        book = [NSMutableArray array];
    }
    return self;
}

-(instancetype) init
{
    return [self initWithName:@"NoName"];
}

-(void) addCard:(AddressCard *)theCard
{
    [book addObject: theCard];
}

-(int) entries
{
    return [book count];
}

-(void) list
{
    NSLog(@"======== Contents of: %@ ========", bookName);
    
    for(AddressCard *theCard in book)
        printf("%-20s   %-32s\n",[theCard.name UTF8String],[theCard.email UTF8String]);
    
    printf("=================================================");
}

-(NSArray *)lookup:(NSString *) Name
{
    NSMutableArray *resultingArray = [NSMutableArray array];
    for (AddressCard *theCard in book)
    {
        if ([theCard.name rangeOfString: Name options:NSCaseInsensitiveSearch].length != 0) {
            [resultingArray addObject:theCard];
        }
    }
    return resultingArray;
}


@end
