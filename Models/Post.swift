//
//  Post.swift
//  insat signin signup
//
//  Created by 1 1 on 03/07/22.
//

import Foundation
import UIKit


class Post {
    var fullName : String
    var img : UIImage
    var img2 : UIImage
    var profilimg : UIImage
    init(fullName : String,img : UIImage,profilimg : UIImage, img2 : UIImage ){
        self.fullName = fullName
        self.img = img
        self.profilimg = profilimg
        self.img2 = img2
    }
}
