//
//  Meme.swift
//  MemeTest1
//
//  Created by 김홍순 on 2017. 1. 27..
//  Copyright © 2017년 Hongsun. All rights reserved.
//

import Foundation
import UIKit

struct Meme{
    
    var topText: String?
    var bottomText: String?
    var originalImage: UIImage?
    var memedImage: UIImage?
    
    init(topText: String, bottomText: String, originalImage: UIImage, memedImage: UIImage) {
        self.topText = topText
        self.bottomText = bottomText
        self.originalImage = originalImage
        self.memedImage = memedImage
    }
}
