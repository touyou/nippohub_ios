//
//  FetchGroups.swift
//  nippohub_ios
//
//  Created by うさきち on 2018/07/30.
//  Copyright © 2018年 うーぴょん. All rights reserved.
//

import Foundation

class FetchGroupsService {
    static func exec() -> [Group] {
        // TODO: サーバからのデータ受け取り
        let res = """
            {"groups": [{"id": 1, "name": "group1", "users": [{"id": 1, "nickname": "user1"}, {"id": 2, "nickname": "user2"}]}, {"id": 2, "name": "group2", "users": [{"id": 3, "nickname": "user3"}, {"id": 4, "nickname": "user4"}]}, {"id": 3, "name": "group3", "users": [{"id": 5, "nickname": "user5"}, {"id": 6, "nickname": "user6"}]}]}
        """.data(using: .utf8)!
        let decoder = JSONDecoder()
        let groupsJson = try? decoder.decode(GroupsJson.self, from: res)
        if groupsJson != nil {
            return groupsJson!.groups.map { group in
                group.toDomainObject()
            }
        } else {
            return []
        }
    }
}
