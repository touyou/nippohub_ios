//
//  PostGroupUserRelationJson.swift
//  nippohub_ios
//
//  Created by うさきち on 2018/11/09.
//  Copyright © 2018 うーぴょん. All rights reserved.
//

import Foundation

struct PostGroupUserRelationJson: Codable {
    let userId: Int
    let role: String
    
    private enum CodingKeys: String, CodingKey {
        case userId = "user_id"
        case role = "role"
    }
}
