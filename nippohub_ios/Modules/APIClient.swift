//
//  APIRequest.swift
//  nippohub_ios
//
//  Created by うさきち on 2018/09/17.
//  Copyright © 2018年 うーぴょん. All rights reserved.
//

import Foundation

class APIClient {
    let session = URLSession.shared
    
    func get(url: URL, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) {
        var request = URLRequest(url: url)
        
        request.httpMethod = "GET"
        request.addValue("application/json", forHTTPHeaderField: "Accept")
        // 検証用にしばらく。セッション保持するまで
        request.addValue("xxx", forHTTPHeaderField: "Authorization")

        session.dataTask(with: request, completionHandler: completionHandler).resume()
    }
}
