//
//  Music.swift
//  hue-ios
//
//  Created by Mark Sun on 10/20/16.
//  Copyright © 2016 Hue. All rights reserved.
//

import Foundation

class Music {
    var name: String
    var album: String
    var albumCover: UIImage?
    var singer: String
    var composer: String
    
    init? (name:String, album:String, albumCover:UIImage, singer:String, composer:String) {
        self.name = name
        self.album = album
        self.albumCover = albumCover
        self.singer = singer
        self.composer = composer
    }
    
}
