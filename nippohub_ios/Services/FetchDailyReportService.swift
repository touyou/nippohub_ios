//
//  FetchDailyReportService.swift
//  nippohub_ios
//
//  Created by うさきち on 2018/08/13.
//  Copyright © 2018年 うーぴょん. All rights reserved.
//

import Foundation

class FetchDailyReportService {
    static func exec() -> DailyReport {
        // TODO: データ受け取り
        let res = """
            {"id": 1, "title": "test1", "body": "body1", "user": {"id": 1, "nickname": "user1"}}
        """.data(using: .utf8)!
        let decoder = JSONDecoder()
        let dailyReportJson = try? decoder.decode(DailyReportJson.self, from: res)
        
        if dailyReportJson != nil {
            return dailyReportJson!.toDomainObject()
        } else {
            return DailyReport(title: "", body: "", user: User(nickname: "", email: nil))
        }
    }
}
