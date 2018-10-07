//
//  DataProvider.swift
//  Town of Salem
//
//  Created by Zsolt Pete on 2018. 10. 07..
//  Copyright © 2018. Zsolt Pete. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

class DataProvider {
    
    var roles = BehaviorRelay<[Role]>(value: [])
    
    static let shared = DataProvider()
    
    private init() {
        
    }
    
}
