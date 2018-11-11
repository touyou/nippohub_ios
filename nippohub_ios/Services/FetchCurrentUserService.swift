//
//  FetchCurrentUserService.swift
//  nippohub_ios
//
//  Created by うさきち on 2018/11/12.
//  Copyright © 2018 うーぴょん. All rights reserved.
//

import Foundation

class FetchCurrentUserService {
    static func call(callbackFunc: @escaping (AccountJson) -> Void) {
        let client = APIClient()
        let url = URL(string: "http://nippohub.com:3000/v1/account")
        
        
        
        client.get(url: url!) { data, res, error in
            if error != nil {
                // TODO: エラーハンドリング
                return
            }
            
            let decoder = JSONDecoder()
            let req = try? decoder.decode(AccountJson.self, from: data!)
            
            callbackFunc(req!)
        }
    }
}
