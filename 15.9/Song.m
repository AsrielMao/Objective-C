//
//  Song.m
//  prog1
//
//  Created by Asriel on 2018/7/2.
//  Copyright © 2018年 ISS. All rights reserved.
//
#import "Song.h"

@implementation Song
@synthesize title, artist, album, playTime;

- (void) setTitle: (NSString *) theTitle andArtist: (NSString *) theArtis andAlbum: (NSString *) theAlbum andPlayTime: (float) thePlayTime {
    title = theTitle;
    artist = theArtis;
    album = theAlbum;
    playTime = thePlayTime;
}

@end
