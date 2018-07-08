//
//  AddressCard.h
//  prog1
//
//  Created by Asriel on 2018/7/2.
//  Copyright © 2018年 ISS. All rights reserved.
//

#ifndef AddressCard__h
#define AddressCard__h

#import<Foundation/Foundation.h>

@interface AddressCard : NSObject

-(void) setName:(NSString *) theName;
-(void) setEmail:(NSString *) theEmail;
-(NSString *) name;
-(NSString *) email;

-(void) print;

@end



#endif /* AddressCard__h */
