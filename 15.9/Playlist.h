//
//  Playlist.h
//  prog1
//
//  Created by Asriel on 2018/7/2.
//  Copyright © 2018年 ISS. All rights reserved.
//
#ifndef Playlist_h
#define Playlist_h
#import <Foundation/Foundation.h>
#import "Song.h"

@interface Playlist : NSObject
@property NSMutableArray * mySongs;
@property NSString * namePlayList;
@property NSRange range;

- (void) initPlaylist: (NSString *)theName;
- (void) addSong: (Song *) songObject;
- (void) printPlaylist;
- (void) removeSong: (Song *)songObject;

@end
#endif
