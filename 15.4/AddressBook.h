#ifndef AddressBook_h
#define AddressBook_h
#import <Foundation/Foundation.h>
#import "AddressCard.h"

@interface AddressBook : NSObject
@property (nonatomic, copy) NSString * bookName;
@property (nonatomic, strong) NSMutableArray * book;

-(void) list;
-(NSUInteger) entries;
-(id) initWithName: (NSString *) name;
-(void) addCard: (AddressCard *) theCard;
-(id) lookup: (NSString *) nameToSearch;

@end
#endif
