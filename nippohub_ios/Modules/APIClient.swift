//
//  APIRequest.swift
//  nippohub_ios
//
//  Created by うさきち on 2018/09/17.
//  Copyright © 2018年 うーぴょん. All rights reserved.
//

import Foundation

class APIClient {
    func get(url: URL, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) {
        let session = URLSession.shared
        let storage = UserDefaults.standard
        let token = storage.object(forKey: "token") as? String
        var request = URLRequest(url: url)
        
        request.httpMethod = "GET"
        request.addValue("application/json", forHTTPHeaderField: "Accept")
        request.addValue(token != nil ? token! : "", forHTTPHeaderField: "Authorization")

        session.dataTask(with: request, completionHandler: completionHandler).resume()
    }
    
    func post(url: URL, body: Data, completationHandler: @escaping (Data?, URLResponse?, Error?) -> Void) {
        let session = URLSession.shared
        let storage = UserDefaults.standard
        let token = storage.object(forKey: "token") as? String
        var request = URLRequest(url: url)
        
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Accept")
        request.addValue(token != nil ? token! : "", forHTTPHeaderField: "Authorization")
        request.httpBody = body
        
        session.dataTask(with: request, completionHandler: completationHandler).resume()
    }
}
