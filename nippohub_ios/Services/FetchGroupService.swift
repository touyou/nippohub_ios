//
//  FetchGroupService.swift
//  nippohub_ios
//
//  Created by うさきち on 2018/08/13.
//  Copyright © 2018年 うーぴょん. All rights reserved.
//

import Foundation

class FetchGroupService {
    static func exec(groupId: Int, callbackFunc: @escaping (Group) -> Void) {
        let client = APIClient()
        let url = URL(string: "http://nippohub.com:3000/v1/groups/\(groupId)")!
        
        client.get(url: url, completionHandler: { data, res, error in
            if error != nil {
                // TODO: エラーハンドリング
                return
            }
            
            let decorder = JSONDecoder()
            let group = try? decorder.decode(GroupJson.self, from: data!)
            
            if group != nil {
                callbackFunc(group!.toDomainObject())
            }
        })
    }
}
