//
//  Video.swift
//  UserDefaultsNSCoding
//
//  Created by Hameed Abdullah on 6/2/19.
//  Copyright © 2019 Hameed Abdullah. All rights reserved.
//

import UIKit


class Video {
    
    var videoTitle: String
    var videoUrl: String
    var videoImage: UIImage
    
    init(videoTitle: String, videoUrl: String, videoImage: UIImage) {
        self.videoTitle = videoTitle
        self.videoUrl = videoUrl
        self.videoImage = videoImage
    }
}
