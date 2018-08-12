//
//  FetchDailyReports.swift
//  nippohub_ios
//
//  Created by うさきち on 2018/08/06.
//  Copyright © 2018年 うーぴょん. All rights reserved.
//

import Foundation

class FetchDailyReportsService {
    static func exec() -> [DailyReport] {
        // TODO: データ受け取り
        let res = """
            {"daily_reports": [{"id": 1, "title": "test1", "body": "body1", "user": {"id": 1, "nickname": "user1"}}, {"id": 2, "title": "test2", "body": "body2", "user": {"id": 2, "nickname": "user2"}}, {"id": 3, "title": "test3", "body": "body3", "user": {"id": 3, "nickname": "user3"}}]}
        """.data(using: .utf8)! 
        let decoder = JSONDecoder()
        let dailyReports = try? decoder.decode(DailyReportsJson.self, from: res)
        if dailyReports != nil {
            return dailyReports!.dailyReports.map { dailyReport in
                dailyReport.toDomainObject()
            }
        } else {
            return []
        }
    }
}
