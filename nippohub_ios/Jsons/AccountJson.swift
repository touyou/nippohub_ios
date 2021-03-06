//
//  AccountJson.swift
//  nippohub_ios
//
//  Created by うさきち on 2018/11/12.
//  Copyright © 2018 うーぴょん. All rights reserved.
//

import Foundation

struct AccountJson: Codable {
    let id: Int
    let email: String
    let nickname: String
    let uid: String
    
    func toDomainObject() -> Account {
        return Account(id: id, email: email, nickname: nickname, uid: uid)
    }
}
