//
//  UserJson.swift
//  nippohub_ios
//
//  Created by うさきち on 2018/07/30.
//  Copyright © 2018年 うーぴょん. All rights reserved.
//

import Foundation

struct UserJson: Codable {
    let id: Int
    let nickname: String
    
    func toDomainObject() -> User {
        return User(nickname: nickname, email: nil)
    }
}
