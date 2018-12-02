//
//  User.swift
//  nippohub_ios
//
//  Created by うさきち on 2018/07/16.
//  Copyright © 2018年 うーぴょん. All rights reserved.
//

import Foundation

class User {
    var nickname: String
    var email: String?
    let uid: String
    
    init(nickname: String, email: String?, uid: String) {
        self.nickname = nickname
        self.email = email
        self.uid = uid
    }
}
