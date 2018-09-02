//
//  PostDailyReportService.swift
//  nippohub_ios
//
//  Created by うさきち on 2018/09/03.
//  Copyright © 2018年 うーぴょん. All rights reserved.
//

import Foundation

class PostDailyReportService {
    static func exec(dailyReport: PostDailyReportJson) {
        let encorder = JSONEncoder()
        let req = try? encorder.encode(dailyReport)
        
        print(req?.base64EncodedString())
    }
}
