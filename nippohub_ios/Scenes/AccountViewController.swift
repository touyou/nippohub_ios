//
//  AccountViewController.swift
//  nippohub_ios
//
//  Created by うさきち on 2018/11/12.
//  Copyright © 2018 うーぴょん. All rights reserved.
//

import UIKit

class AccountViewController: UIViewController {
    @IBOutlet var idLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var nicknameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        FetchCurrentUserService.call() { account in
            DispatchQueue.main.sync {
                self.idLabel.text = String(account.id)
                self.emailLabel.text = account.email
                self.nicknameLabel.text = account.nickname
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
