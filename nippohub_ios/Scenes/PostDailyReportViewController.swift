//
//  PostDailyReportViewController.swift
//  nippohub_ios
//
//  Created by うさきち on 2018/09/03.
//  Copyright © 2018年 うーぴょん. All rights reserved.
//

import UIKit

class PostDailyReportViewController: UIViewController {
    @IBOutlet var titleForm: UITextField!
    @IBOutlet var bodyForm: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction
    func postDailyReport() {
        let dailyReport = PostDailyReportJson(title: titleForm.text!, body: bodyForm.text!)
        
        PostDailyReportService.exec(groupId: 1, dailyReport: dailyReport) {
            self.dismiss(animated: true, completion: nil)
        }
    }
}
