//
//  GlobalVar.swift
//  APP
//
//  Created by 西尾俊輝 on 2018/07/01.
//  Copyright © 2018年 myname. All rights reserved.
//

import Foundation

class GlobalVar {
    private init() {}
    static let shared = GlobalVar()

    struct Role {
        let roleName:String
        let roleImageName:String
        
        init(roleName:String, roleImageName:String) {
            self.roleImageName = roleImageName
            self.roleName = roleName
        }
    }
    
    let roleList = [
        Role(roleName: "村人", roleImageName: "villager.png"),
        Role(roleName: "占い師", roleImageName: "soothsayer.png"),
        Role(roleName: "怪盗", roleImageName: "thief.png"),
        Role(roleName: "人狼", roleImageName: "wolf.png")
    ]

}

