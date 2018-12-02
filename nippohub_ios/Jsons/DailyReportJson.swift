//
//  DailyReportJson.swift
//  nippohub_ios
//
//  Created by うさきち on 2018/08/06.
//  Copyright © 2018年 うーぴょん. All rights reserved.
//

import Foundation

struct DailyReportJson: Codable {
    let id: Int
    let title: String
    let body: String
    let user: UserJson
    
    func toDomainObject() -> DailyReport {
        return DailyReport(id: id, title: title, body: body, user: user.toDomainObject())
    }
}
