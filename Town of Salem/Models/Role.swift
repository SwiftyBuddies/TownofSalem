//
//  Role.swift
//  Town of Salem
//
//  Created by Zsolt Pete on 2018. 10. 07..
//  Copyright © 2018. Zsolt Pete. All rights reserved.
//

import Foundation

struct Role {
    
    var name: String?
    var desc: String?
    var imageSrc: String?
    
}

extension Role: SimpleImageBindable {
    
    var pImageScr: String? {
        return imageSrc
    }
    
}
