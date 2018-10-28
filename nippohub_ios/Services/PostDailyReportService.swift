//
//  PostDailyReportService.swift
//  nippohub_ios
//
//  Created by うさきち on 2018/09/03.
//  Copyright © 2018年 うーぴょん. All rights reserved.
//

import Foundation

class PostDailyReportService {
    static func exec(groupId: Int, dailyReport: PostDailyReportJson, callbackFunc: @escaping () -> Void) {
        let client = APIClient()
        let url = URL(string: "http://nippohub.com:3000/v1/groups/\(groupId)/daily_reports")
        let encorder = JSONEncoder()
        let req = try? encorder.encode(dailyReport)
        
        client.post(url: url!, body: req!, completationHandler: { data, res, error in
            if error != nil {
                // TODO: エラーハンドリング
                return
            }
            
            callbackFunc()
        })
    }
}
