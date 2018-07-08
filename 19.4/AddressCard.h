//
//  AddressCard.h
//  prog1
//
//  Created by Asriel on 2018/7/2.
//  Copyright © 2018年 ISS. All rights reserved.
//
#ifndef AddressCard_h
#define AddressCard_h
#import <Foundation/Foundation.h>

@interface AddressCard: NSObject <NSCopying, NSCoding>
@property (copy, nonatomic) NSString *name, *email;
-(void) setName: (NSString *) theName andEmail: (NSString *) theEmail;
-(NSComparisonResult) compareNames: (id) element;
-(void) print;
-(BOOL) search: (NSString *) criteria;

@end
#endif /* AddressCard_h */
