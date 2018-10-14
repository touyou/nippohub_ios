//
//  FetchDailyReportService.swift
//  nippohub_ios
//
//  Created by うさきち on 2018/08/13.
//  Copyright © 2018年 うーぴょん. All rights reserved.
//

import Foundation

class FetchDailyReportService {
    static func exec(groupId: Int, dailyReportId: Int, callbackFunc: @escaping (DailyReport) -> Void) {
        let client = APIClient()
        let url = URL(string: "http://nippohub.com:3000/v1/groups/\(groupId)/daily_reports/\(dailyReportId)")!
        
        client.get(url: url, completionHandler: { data, res, error in
            if error != nil {
                // TODO: エラーハンドリング
                return
            }
            
            let decoder = JSONDecoder()
            let dailyReport = try? decoder.decode(DailyReportJson.self, from: data!)
            
            if dailyReport != nil {
                callbackFunc(dailyReport!.toDomainObject())
            }
        })
    }
}
