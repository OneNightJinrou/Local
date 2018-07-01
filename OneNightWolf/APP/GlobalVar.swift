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
    
    let roleDict = [
        "villager": Role(roleName: "村人", roleImageName: "villager.png"),
        "soothsayer": Role(roleName: "占い師", roleImageName: "soothsayer.png"),
        "thief": Role(roleName: "怪盗", roleImageName: "thief.png"),
        "wolf": Role(roleName: "人狼", roleImageName: "wolf.png")
    ]
    
    
    let roleImageNames = ["villager.png", "soothsayer.png", "thief.png", "wolf.png"]
    let roleNames = ["村人", "占い師", "怪盗", "人狼"]
}

