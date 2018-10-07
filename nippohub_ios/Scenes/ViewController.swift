//
//  ViewController.swift
//  nippohub_ios
//
//  Created by うーぴょん on 2018/06/18.
//  Copyright © 2018年 うーぴょん. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var nicknameForm: UITextField!
    @IBOutlet var emailForm: UITextField!
    @IBOutlet var passwordFrom: UITextField!
    @IBOutlet var passwordConfirmationForm: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction
    func createUser() {
        let user = PostUserJson(nickname: nicknameForm.text!, email: emailForm.text!, password: passwordFrom.text!, passwordConfirmation: passwordConfirmationForm.text!)
        
        PostUserService.exec(user: user)
        
        //performSegue(withIdentifier: "showGroupsSegue", sender: nil)
    }
}

