//
//  AddressBook.h
//  prog1
//
//  Created by Asriel on 2018/7/2.
//  Copyright © 2018年 ISS. All rights reserved.
//

#ifndef AddressBook_h
#define AddressBook_h
#import <Foundation/Foundation.h>
#import "AddressCard.h"

@interface AddressBook: NSObject <NSCopying, NSCoding>
@property (nonatomic, copy) NSString *bookName;
@property (nonatomic, strong) NSMutableArray *book;
-(id) initWithName: (NSString *) name;
-(void) addCard: (AddressCard *) theCard;
-(void) removeCard: (AddressCard *) theCard;
-(void) list;
-(NSUInteger) entries;

-(AddressBook *) lookup: (NSString *) theName;

-(void) sort;

@end
#endif
