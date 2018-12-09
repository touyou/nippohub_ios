//
//  ViewController.swift
//  nippohub_ios
//
//  Created by うーぴょん on 2018/06/18.
//  Copyright © 2018年 うーぴょん. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var uidForm: UITextField!
    @IBOutlet var nicknameForm: UITextField!
    @IBOutlet var emailForm: UITextField!
    @IBOutlet var passwordFrom: UITextField!
    @IBOutlet var passwordConfirmationForm: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if AuthenticationToken.get() != nil && AuthenticationToken.get() != "" {
            performSegue(withIdentifier: "showGroupsSegue", sender: nil)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction
    func createUser() {
        let user = PostUserJson(uid: uidForm.text!, nickname: nicknameForm.text!, email: emailForm.text!, password: passwordFrom.text!, passwordConfirmation: passwordConfirmationForm.text!)
        
        PostUserService.exec(user: user, callbackFunc: { userJson in
            let token = userJson.token
            
            AuthenticationToken.set(token)
            
            DispatchQueue.main.sync {
                self.performSegue(withIdentifier: "showGroupsSegue", sender: nil)
            }
        })
    }
}

