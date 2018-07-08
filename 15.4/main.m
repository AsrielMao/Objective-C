#import "AddressBook.h"

int main(int argc, const char * argv[]){
    @autoreleasepool {
        AddressCard * aCard = [[AddressCard alloc] init];
        AddressCard * bCard = [[AddressCard alloc] init];
        
        [aCard setFirstName: @"Lionel"
                   lastName: @"Messi"
                    country: @"Argentina"
                    address: @"Santa Fe, 15"
                       city: @"Barcelona"
                        ZIP: @"22100"
                      phone: @"12345678"
                      email: @"Lionel@Messi.com"];
        
        [bCard setFirstName: @"Andres"
                   lastName: @"Iniseta"
                    country: @"Spain"
                    address: @"Albacete, 76"
                       city: @"Barcelona"
                        ZIP: @"22100"
                      phone: @"87654321"
                      email: @"Andres@Iniseta.com"];
        
        
        NSArray * cardsToSearch;

        AddressBook * myBook = [[AddressBook alloc] initWithName: @"Chief's Address Book"];

        [myBook addCard: aCard];
        [myBook addCard: bCard];
        
        [myBook list];

        printf("Lookup: onel\n");
        cardsToSearch = [myBook lookup: @"onel"];
        [cardsToSearch makeObjectsPerformSelector: @selector(print)];
        
        printf("Lookup: res\n");
        cardsToSearch = [myBook lookup: @"res"];
        [cardsToSearch makeObjectsPerformSelector: @selector(print)];
    }
    return 0;
}
