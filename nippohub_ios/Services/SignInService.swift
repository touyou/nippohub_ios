//
//  SignInService.swift
//  nippohub_ios
//
//  Created by うさきち on 2018/11/30.
//  Copyright © 2018 うーぴょん. All rights reserved.
//

import Foundation

class SignInService {
    static func call(authInfo: SignInJson, callbackFunc: @escaping (UserAuthorizationJson) -> Void) {
        let client = APIClient()
        let url = URL(string: "http://nippohub.com:3000/v1/account/sessions")
        let encoder = JSONEncoder()
        let req = try! encoder.encode(authInfo)
        
        client.post(url: url!, body: req) { data, response, err in
            if err != nil {
                // TODO: エラーハンドリング
                return
            }
            let decoder = JSONDecoder()
            let res = try! decoder.decode(UserAuthorizationJson.self, from: data!)
            
            callbackFunc(res)
        }
    }
}
