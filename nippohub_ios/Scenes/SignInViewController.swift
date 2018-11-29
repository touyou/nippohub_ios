//
//  SignInViewController.swift
//  nippohub_ios
//
//  Created by うさきち on 2018/11/30.
//  Copyright © 2018 うーぴょん. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {
    @IBOutlet var formEmail: UITextField?
    @IBOutlet var formPassword: UITextField?

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
    func signIn() {
        let signInInfo = SignInJson(email: (formEmail?.text)!, password: (formPassword?.text)!)
        
        SignInService.call(authInfo: signInInfo) { userJson in
            AuthenticationToken.set(userJson.token)
            
            self.performSegue(withIdentifier: "showGroupsFromSignInSegue", sender: nil)
        }
    }
}
