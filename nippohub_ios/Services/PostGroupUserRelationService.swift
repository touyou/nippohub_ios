//
//  PostGroupUserRelationService.swift
//  nippohub_ios
//
//  Created by うさきち on 2018/11/09.
//  Copyright © 2018 うーぴょん. All rights reserved.
//

import Foundation

class PostGroupUserRelationService {
    static func exec(groupId: Int, groupUserRelation: PostGroupUserRelationJson, callbackFunc: @escaping () -> Void) {
        let client = APIClient()
        let url = URL(string: "http://nippohub.com:3000/v1/groups/\(groupId)/users")
        let encoder = JSONEncoder()
        let req = try? encoder.encode(groupUserRelation)
        
        client.post(url: url!, body: req!, completationHandler: { data, res, error in
            print(res)
            if error != nil {
                // TODO: エラーハンドリング
                return
            }
            
            callbackFunc()
        })
    }
}
