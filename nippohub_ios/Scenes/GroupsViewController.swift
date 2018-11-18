//
//  GroupsViewController.swift
//  nippohub_ios
//
//  Created by うーぴょん on 2018/06/25.
//  Copyright © 2018年 うーぴょん. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

class GroupsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var groupIndexTableView: UITableView!
    var groups: [Group] = []
    private let disposeBag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        groupIndexTableView.register(UINib(nibName: "GroupIndexTableViewCell", bundle: nil), forCellReuseIdentifier: "groupItem")
        FetchGroupsService.exec(callbackFunc: { groups in
            self.groups = groups
            
            DispatchQueue.main.sync {
                self.groupIndexTableView.reloadData()
            }
        })
        
        groupIndexTableView.delegate = self
        groupIndexTableView.dataSource = self
        groupIndexTableView.reloadData()
    }
    // TODO: publicいらない
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groups.count
    }
    
    // TODO: publicいらない
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "groupItem") as! GroupIndexTableViewCell
        let group = self.groups[indexPath.row]
        
        cell.nameLabel.text = group.name
        cell.descriptionLabel.text = group.description
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "indexDailyReportSegue", sender: nil)
    }
    
    @IBAction
    func sign_out() {
        let screen = storyboard?.instantiateViewController(withIdentifier: "signOutPoint")
        
        AuthenticationToken.clear()
        
        present(screen!, animated: true, completion: nil)
    }
}
