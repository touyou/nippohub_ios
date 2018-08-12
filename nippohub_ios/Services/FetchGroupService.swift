//
//  FetchGroupService.swift
//  nippohub_ios
//
//  Created by うさきち on 2018/08/13.
//  Copyright © 2018年 うーぴょん. All rights reserved.
//

import Foundation

class FetchGroupService {
    static func exec() -> Group {
        let res = """
            {"id": 1, "name": "group1", "description": "a description.", "users": [{"id": 1, "nickname": "user1"}, {"id": 2, "nickname": "user2"}]}
        """.data(using: .utf8)!
        let decorder = JSONDecoder()
        let groupJson = try? decorder.decode(GroupJson.self, from: res)
        
        if groupJson != nil {
            return groupJson!.toDomainObject()
        } else {
            return Group(name: "", description: "")
        }
    }
}
