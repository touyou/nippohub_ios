//
//  PostUserService.swift
//  nippohub_ios
//
//  Created by うさきち on 2018/09/10.
//  Copyright © 2018年 うーぴょん. All rights reserved.
//

import Foundation

class PostUserService {
    static func exec(user: PostUserJson) {
        let client = APIClient()
        let url = URL(string: "http://nippohub.com:3000/v1/account")
        let encoder = JSONEncoder()
        let req = try? encoder.encode(user)

        client.post(url: url!, body: req!, completationHandler: { data, res, error in
            print("---------------------")
            print(res!)
            print("---------------------")
            
            print("---------------------")
            print(data?.base64EncodedString())
            print("---------------------")
        })
        
        
    }
}
