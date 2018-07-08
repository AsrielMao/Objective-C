//
//  main.m
//  prog1
//
//  Created by Asriel on 2018/7/2.
//  Copyright © 2018年 ISS. All rights reserved.
//
#import <Foundation/Foundation.h>
#import "Playlist.h"
#import "MusicCollection.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        MusicCollection * myMusic = [[MusicCollection alloc]init];
        [myMusic initMusic];
        
        Song * song1 = [[Song alloc] init];
        [song1 setTitle:@"Going Home" andArtist:@"Leonard Cohen" andAlbum:@"Old ideas" andPlayTime:3.51];
        
        Song * song2 = [[Song alloc] init];
        [song2 setTitle:@"D-Day" andArtist:@"Blondie" andAlbum:@"Panic of Girls" andPlayTime:3.37];
        
        Song * song3 = [[Song alloc] init];
        [song3 setTitle:@"Wonderful World" andArtist:@"Rod Stewart" andAlbum:@"Soulbook" andPlayTime:3.34];
        
        Song * song4 = [[Song alloc] init];
        [song4 setTitle:@"Start Me Up" andArtist:@"The Rolling Stones" andAlbum:@"Jump Back" andPlayTime:3];
        
        Song * song5 = [[Song alloc] init];
        [song5 setTitle:@"Hey Jude" andArtist:@"The Beatles" andAlbum:@"1" andPlayTime:7.10];
        
        [myMusic addSong:song1];
        [myMusic addSong:song2];
        [myMusic addSong:song3];
        [myMusic addSong:song4];
        [myMusic addSong:song5];
        
        Playlist * myPlaylist1 = [[Playlist alloc]init];
        [myPlaylist1 initPlaylist:@"My play list"];
        
        [myPlaylist1 addSong:song3];
        [myPlaylist1 addSong:song4];
        
        Playlist * myPlaylist2 = [[Playlist alloc]init];
        [myPlaylist2 initPlaylist:@"My second play list"];
        [myPlaylist2 addSong:song5];
        
        [myPlaylist1 printPlaylist];
        [myPlaylist2 printPlaylist];
        
        [myMusic removeSong:song3];
        [myPlaylist1 removeSong:song3];
        [myPlaylist2 removeSong:song3];
        
        printf("lists after remove song3:\n");
        [myPlaylist1 printPlaylist];
        [myPlaylist2 printPlaylist];
        
        [myMusic printSongs];
    }
    return 0;
}
