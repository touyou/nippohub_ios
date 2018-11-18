//
//  AuthenticationToken.swift
//  nippohub_ios
//
//  Created by うさきち on 2018/10/29.
//  Copyright © 2018年 うーぴょん. All rights reserved.
//

import Foundation

class AuthenticationToken {
    private static let manager = AuthenticationToken()
    static let get = AuthenticationToken.manager.get
    static let set = AuthenticationToken.manager.set
    static let clear = AuthenticationToken.manager.clear
    private let userDefault = UserDefaults.standard
    private var token: String?
    
    private init() {
        token = userDefault.object(forKey: "token") as? String
    }
    
    func get() -> String? {
        return token
    }
    
    func set(token: String) {
        self.token = token
        userDefault.set(token, forKey: "token")
        userDefault.synchronize()
    }
    
    func clear() {
        self.token = nil
        userDefault.set(nil, forKey: "token")
        userDefault.synchronize()
    }
}
