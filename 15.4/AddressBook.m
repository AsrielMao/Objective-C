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

-(NSArray *) lookup:(NSString *)nameToSearch{
    NSIndexSet * resultIndexes;
    resultIndexes = [book indexesOfObjectsPassingTest:^BOOL(AddressCard *nextCard, NSUInteger idx, BOOL *stop) {
        
        NSRange theRange;
        theRange = [nextCard.firstName rangeOfString:nameToSearch
                                             options:NSCaseInsensitiveSearch];
        
        if (theRange.location != NSNotFound)
            return  YES;
        else
            return NO;
    }];
    
    return [book objectsAtIndexes: resultIndexes];
    
}
@end
