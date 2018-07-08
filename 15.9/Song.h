//
//  Song.h
//  prog1
//
//  Created by Asriel on 2018/7/2.
//  Copyright © 2018年 ISS. All rights reserved.
//
#ifndef Song_h
#define Song_h
#import <Foundation/Foundation.h>

@interface Song : NSObject
@property (copy, nonatomic) NSString *title, *artist, *album;
@property (nonatomic) float playTime;

- (void) setTitle: (NSString *) theTitle andArtist: (NSString *) theArtis andAlbum: (NSString *) theAlbum andPlayTime: (float) thePlayTime;

@end
#endif
