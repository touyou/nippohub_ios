//
//  DailyReportsViewController.swift
//  nippohub_ios
//
//  Created by うさきち on 2018/07/16.
//  Copyright © 2018年 うーぴょん. All rights reserved.
//

import UIKit

class DailyReportsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var dailyReports: [DailyReport] = []
    @IBOutlet var dailyReportIndexTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dailyReportIndexTable.register(UINib(nibName: "DailyReportIndexTableViewCell", bundle: nil), forCellReuseIdentifier: "dailyReportItem")
        FetchDailyReportsService.exec(callbackFunc: { dailyReports in
            self.dailyReports = dailyReports
            
            DispatchQueue.main.sync {
                self.dailyReportIndexTable.reloadData()
            }
        })
        
        dailyReportIndexTable.delegate = self
        dailyReportIndexTable.dataSource = self
        dailyReportIndexTable.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dailyReports.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "dailyReportItem") as! DailyReportIndexTableViewCell
        let dailyReport = dailyReports[indexPath.row]
        cell.titleLabel.text = dailyReport.title
        cell.userNameLabel.text = dailyReport.user.nickname
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showDailyReportSegue", sender: nil)
    }
}
