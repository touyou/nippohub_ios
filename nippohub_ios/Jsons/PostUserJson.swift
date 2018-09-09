//
//  PostUserJson.swift
//  nippohub_ios
//
//  Created by うさきち on 2018/09/10.
//  Copyright © 2018年 うーぴょん. All rights reserved.
//

import Foundation

struct PostUserJson: Codable {
    let nickname: String
    let email: String
    let password: String
    let passwordConfirmation: String
    
    private enum CodingKeys: String, CodingKey {
        case nickname = "nickname"
        case email = "email"
        case password = "password"
        case passwordConfirmation = "password_confirmation"
    }
}
