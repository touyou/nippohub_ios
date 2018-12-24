//
//  FetchGroupUserRelationsService.swift
//  nippohub_ios
//
//  Created by うさきち on 2018/12/24.
//  Copyright © 2018 うーぴょん. All rights reserved.
//

import Foundation

class FetchGroupUserRelationsService {
    static func call(groupId: Int, callbackFunc: @escaping ([User]) -> Void) {
        let client = APIClient()
        let url = URL(string: "http://nippohub.com:3000/v1/groups/\(groupId)/users")
        
        client.get(url: url!) { data, res, error in
            if error != nil {
                // TODO: エラーハンドリング
                return
            }
            
            let decoder = JSONDecoder()
            let req = try? decoder.decode(GroupUserRelationsJson.self, from: data!)
            
            callbackFunc(req!.users.map { userJson in userJson.toDomainObject() })
        }
    }
}
