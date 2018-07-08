//
//  MusicCollection.h
//  prog1
//
//  Created by Asriel on 2018/7/2.
//  Copyright © 2018年 ISS. All rights reserved.
//
#ifndef MusicCollection_h
#define MusicCollection_h
#import <Foundation/Foundation.h>
#import "Song.h"

@interface MusicCollection : NSObject
@property NSMutableArray * libary;
@property NSRange range;

- (void) addSong: (Song *) songObject;
- (void) initMusic;
- (void) printSongs;
- (void) removeSong: (Song *)songObject;

@end
#endif
