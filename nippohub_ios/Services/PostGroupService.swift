//
//  PatchGroup.swift
//  nippohub_ios
//
//  Created by うさきち on 2018/08/27.
//  Copyright © 2018年 うーぴょん. All rights reserved.
//

import Foundation

class PostGroupService {
    static func exec(group: PostGroupJson, callbackFunc: @escaping () -> Void) {
        let client = APIClient()
        let url = URL(string: "http://nippohub.com:3000/v1/groups")
        let encoder = JSONEncoder()
        let req = try? encoder.encode(group)
        
        client.post(url: url!, body: req!, completationHandler: { data, res, error in
            if error != nil {
                // TODO: エラーハンドリング
                return
            }
            
            callbackFunc()
        })
    }
}
