//
//  PostUserService.swift
//  nippohub_ios
//
//  Created by うさきち on 2018/09/10.
//  Copyright © 2018年 うーぴょん. All rights reserved.
//

import Foundation

class PostUserService {
    static func exec(user: PostUserJson) {
        let encoder = JSONEncoder()
        let req = try? encoder.encode(user)
        
        // TODO: HTTPリクエストにする
        print(req?.base64EncodedString())
    }
}
