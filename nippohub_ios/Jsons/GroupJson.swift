//
//  GroupJson.swift
//  nippohub_ios
//
//  Created by うさきち on 2018/07/30.
//  Copyright © 2018年 うーぴょん. All rights reserved.
//

import Foundation

struct GroupJson: Codable {
    let id: Int
    let name: String
    let users: [UserJson]?
    
    func toDomainObject() -> Group {
        return Group(id: id, name: name, description: "")
    }
}
