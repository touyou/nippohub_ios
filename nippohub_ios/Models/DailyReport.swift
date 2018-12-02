//
//  DailyReport.swift
//  nippohub_ios
//
//  Created by うさきち on 2018/07/16.
//  Copyright © 2018年 うーぴょん. All rights reserved.
//

import Foundation

class DailyReport {
    let title: String
    let body: String
    let user: User
    
    init(title: String, body: String, user: User) {
        self.title = title
        self.body = body
        self.user = user
    }
}
