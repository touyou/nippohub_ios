//
//  User.swift
//  nippohub_ios
//
//  Created by うさきち on 2018/07/16.
//  Copyright © 2018年 うーぴょん. All rights reserved.
//

import Foundation

class User {
    let nickname: String
    let uid: String
    
    init(nickname: String, uid: String) {
        self.nickname = nickname
        self.uid = uid
    }
}
