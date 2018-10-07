//
//  Role.swift
//  Town of Salem
//
//  Created by Zsolt Pete on 2018. 10. 07..
//  Copyright © 2018. Zsolt Pete. All rights reserved.
//

import Foundation

class Role {
    
    var name: String?
    var desc: String?
    var imageSrc: String?
    
    init(name: String? = nil, desc: String? = nil, imageSrc: String? = nil) {
        self.name = name
        self.desc = desc
        self.imageSrc = imageSrc
    }
    
}

extension Role: SimpleImageBindable {
    
    var pImageScr: String? {
        return imageSrc
    }
    
}
