//
//  FetchGroups.swift
//  nippohub_ios
//
//  Created by うさきち on 2018/07/30.
//  Copyright © 2018年 うーぴょん. All rights reserved.
//

import Foundation

class FetchGroupsService {
    static func exec(callbackFunc: @escaping ([Group]) -> Void) {
        let client = APIClient()
        let url = URL(string: "http://nippohub.com:3000/v1/groups")!

        client.get(url: url, completionHandler: { data, res, error in
            if error != nil {
                // TODO: エラーハンドリング
                return
            }
            
            let decoder = JSONDecoder()
            let groupsJson = try? decoder.decode(GroupsJson.self, from: data!)
         
            if groupsJson != nil {
                callbackFunc(groupsJson!.groups.map { group in
                    group.toDomainObject()
                })
            } else {
                callbackFunc([])
            }
        })
    }
}
