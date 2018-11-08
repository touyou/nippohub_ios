//
//  PostGroupUserRelationController.swift
//  nippohub_ios
//
//  Created by うさきち on 2018/11/05.
//  Copyright © 2018 うーぴょん. All rights reserved.
//

import UIKit

class PostGroupUserRelationController: UIViewController {
    @IBOutlet var userIdForm: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction
    func postGroupUserRelation() {
        guard let userId = Int(userIdForm.text!) else { return }
        let groupUserRelation = PostGroupUserRelationJson(userId: userId, role: "general")
        
        PostGroupUserRelationService.exec(groupId: 1, groupUserRelation: groupUserRelation) {
            DispatchQueue.main.sync {
                self.dismiss(animated: true, completion: nil)
            }
        }
    }
}
