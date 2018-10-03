//
//  FetchDailyReports.swift
//  nippohub_ios
//
//  Created by うさきち on 2018/08/06.
//  Copyright © 2018年 うーぴょん. All rights reserved.
//

import Foundation

class FetchDailyReportsService {
    static func exec(callbackFunc: @escaping ([DailyReport]) -> Void) {
        let client = APIClient()
        let url = URL(string: "http://nippohub.com:3000/v1/groups/1/daily_reports")!
        
        client.get(url: url, completionHandler: { data, res, error in
            if error != nil {
                // TODO: エラーハンドリング
                return
            }
            
            let decoder = JSONDecoder()
            let dailyReportsJson = try? decoder.decode(DailyReportsJson.self, from: data!)
            
            if dailyReportsJson != nil {
                callbackFunc(dailyReportsJson!.dailyReports.map { dailyReport in
                    dailyReport.toDomainObject()
                })
            } else {
                callbackFunc([])
            }
        })
    }
}
