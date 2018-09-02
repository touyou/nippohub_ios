//
//  PostGroupViewController.swift
//  nippohub_ios
//
//  Created by うさきち on 2018/08/27.
//  Copyright © 2018年 うーぴょん. All rights reserved.
//

import UIKit

class PostGroupViewController: UIViewController {
    @IBOutlet weak var nameForm: UITextField!
    @IBOutlet weak var descriptionForm: UITextField!
    
    @IBAction func postGroup() {
        let group = PostGroupJson(name: nameForm.text!, description: descriptionForm.text!)
        
        PostGroupService.exec(group: group)
    }
}
