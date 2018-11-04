//
//  DailyReportViewController.swift
//  nippohub_ios
//
//  Created by うさきち on 2018/11/05.
//  Copyright © 2018 うーぴょん. All rights reserved.
//

import UIKit

class DailyReportViewController: UIViewController {
    @IBOutlet var labelTitle: UILabel!
    @IBOutlet var labelBody: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        FetchDailyReportService.exec(groupId: 1, dailyReportId: 1, callbackFunc: { dailyReport in
            DispatchQueue.main.sync {
                self.labelTitle.text = dailyReport.title
                self.labelBody.text = dailyReport.body
            }
        })
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
