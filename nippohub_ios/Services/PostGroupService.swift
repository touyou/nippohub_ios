//
//  PatchGroup.swift
//  nippohub_ios
//
//  Created by うさきち on 2018/08/27.
//  Copyright © 2018年 うーぴょん. All rights reserved.
//

import Foundation

class PostGroupService {
    static func exec(group: Group) {
        let groupJson = PostGroupJson.fromDomainObject(group: group)
        let encoder = JSONEncoder()
        let req = try? encoder.encode(groupJson)
        
        // TODO: HTTPリクエスト送るようにする
        print(req?.base64EncodedString())
    }
}
