//
//  Playlist.m
//  prog1
//
//  Created by Asriel on 2018/7/2.
//  Copyright © 2018年 ISS. All rights reserved.
//
#import "Playlist.h"

@implementation Playlist
@synthesize mySongs,namePlayList,range;

- (void) initPlaylist: (NSString *)theName{
    mySongs = [NSMutableArray array];
    namePlayList = theName;
}

- (void) addSong: (Song *) songObject {
    for(Song * elem in mySongs){
        range = [elem.title rangeOfString:songObject.title];
        if(range.location != NSNotFound)
            return;
    }
    
    [mySongs addObject:songObject];
    
}

- (void) removeSong: (Song *)songObject{
    [mySongs removeObject:songObject];
}

- (void) printPlaylist {
    printf("%s\n", [namePlayList UTF8String]);
    printf("-------------------------\n");
    
    for( Song * elment in mySongs) {
        printf("%s\n%s\n%s\n%.2f\n",[elment.title UTF8String], [elment.artist UTF8String], [elment.album UTF8String],elment.playTime);
        printf("-------------------------\n");
    }
}

@end
