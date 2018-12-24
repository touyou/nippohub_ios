//
//  GroupUserRelationIndexViewController.swift
//  nippohub_ios
//
//  Created by うさきち on 2018/12/24.
//  Copyright © 2018 うーぴょん. All rights reserved.
//

import UIKit

class GroupUserRelationIndexViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var groupUserRelationIndexTableView: UITableView!
    var users: [User] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        groupUserRelationIndexTableView.register(UINib(nibName: "GroupUserRelationIndexTableViewCell", bundle: nil), forCellReuseIdentifier: "userItem")
        
        groupUserRelationIndexTableView.delegate = self
        groupUserRelationIndexTableView.dataSource = self
        groupUserRelationIndexTableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "userItem") as! GroupUserRelationIndexTableViewCell
        let user = self.users[indexPath.row]
        
        cell.userNameLabel.text = user.nickname
        cell.roleLabel.text = ""
        
        return cell
    }
}
