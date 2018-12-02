//
//  UserAuthorizationJson.swift
//  nippohub_ios
//
//  Created by うさきち on 2018/10/22.
//  Copyright © 2018年 うーぴょん. All rights reserved.
//

import Foundation

struct UserAuthorizationJson: Codable {
    let id: Int
    let email: String
    let uid: String
    let nickname: String
    let token: String
}
