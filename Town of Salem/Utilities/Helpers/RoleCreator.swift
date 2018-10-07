//
//  RoleCreator.swift
//  Town of Salem
//
//  Created by Zsolt Pete on 2018. 10. 07..
//  Copyright © 2018. Zsolt Pete. All rights reserved.
//

import Foundation

class RoleCreator {
    
    func getRoles() -> [Role] {
        let doctor = Role(name: "Doctor", desc: """
            You may only heal yourself once.
            You will know if your target is attacked.
        """, imageSrc: "Doctor")
        let bodygourd = Role(name: "Bodyguard", desc: """
            If your target is attacked, both you and your attacker will die instead.
            If you successfully protect someone, you can't be saved from death.
            Your counterattack ignores night immunity.
        """, imageSrc: "Bodyguard")
        let roles = [doctor, bodygourd]
        return roles
    }
    
}
