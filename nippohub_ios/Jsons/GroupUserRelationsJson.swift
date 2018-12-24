//
//  GroupUserRelationsJson.swift
//  nippohub_ios
//
//  Created by うさきち on 2018/12/24.
//  Copyright © 2018 うーぴょん. All rights reserved.
//

import Foundation

struct GroupUserRelationsJson: Codable {
    let id: Int
    let name: String
    let description: String
    let users: [UserJson]
}
