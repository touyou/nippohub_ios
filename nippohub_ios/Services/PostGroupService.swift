//
//  PatchGroup.swift
//  nippohub_ios
//
//  Created by うさきち on 2018/08/27.
//  Copyright © 2018年 うーぴょん. All rights reserved.
//

import Foundation

class PostGroupService {
    static func exec(group: PostGroupJson) {
        let encoder = JSONEncoder()
        let req = try? encoder.encode(group)
        
        // TODO: HTTPリクエスト送るようにする
        print(req?.base64EncodedString())
    }
}
