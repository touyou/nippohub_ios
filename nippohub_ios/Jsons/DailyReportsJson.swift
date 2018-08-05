//
//  DailyReportsJson.swift
//  nippohub_ios
//
//  Created by うさきち on 2018/08/06.
//  Copyright © 2018年 うーぴょん. All rights reserved.
//

import Foundation

struct DailyReportsJson: Codable {
    let dailyReports: [DailyReportJson]
 
    private enum CodingKeys: String, CodingKey {
        case dailyReports = "daily_reports"
    }
}
