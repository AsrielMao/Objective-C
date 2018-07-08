//
//  MusicCollection.m
//  prog1
//
//  Created by Asriel on 2018/7/2.
//  Copyright © 2018年 ISS. All rights reserved.
//
#import "MusicCollection.h"

@implementation MusicCollection
@synthesize libary,range;

- (void) initMusic {
    libary = [NSMutableArray array];
}

- (void) addSong: (Song *) songObject {
    for(Song * elem in libary){
        range = [elem.title rangeOfString:songObject.title];
        if(range.location != NSNotFound)
            return;
    }
    
    [libary addObject:songObject];
}

- (void) removeSong: (Song *)songObject{
    [libary removeObject:songObject];
}


- (void) printSongs {
    printf("My MusicCollection\n");
    printf("-------------------------\n");
    
    for( Song * elment in libary) {
        
        printf("%s\n%s\n%s\n%.2f\n",[elment.title UTF8String], [elment.artist UTF8String], [elment.album UTF8String],elment.playTime);
        printf("-------------------------\n");
    }
}

@end
