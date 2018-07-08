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

    @IBOutlet weak var groupIndexTableView: UITableView!/* {

        didSet {

            // ここは便利Extensionを生やすともう少し簡単になる
            groupIndexTableView.register(UINib(nibName: "GroupIndexTableViewCell", bundle: nil), forCellReuseIdentifier: "groupItem")
            
            // 一旦ここにまとめる（リファクタの時にいろいろ変える余地あり）
            let groups = Observable<[Group]>.just([Group(name: "test1", description: "body1"), Group(name: "test2", description: "body2"), Group(name: "test3", description: "body3")])
            groups.bind(to: groupIndexTableView.rx.items(cellIdentifier: "groupItem", cellType: GroupIndexTableViewCell.self)) { row, element, cell in
                cell.nameLabel.text = element.name
                cell.descriptionLabel.text = element.description
            }.disposed(by: disposeBag)
        }
    }*/
    var groups: [Group] = []
    private let disposeBag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()
        groupIndexTableView.register(UINib(nibName: "GroupIndexTableViewCell", bundle: nil), forCellReuseIdentifier: "groupItem")
        self.groups = [Group(name: "test1", description: "body1"), Group(name: "test2", description: "body2"), Group(name: "test3", description: "body3")]
        groupIndexTableView.delegate = self
        groupIndexTableView.dataSource = self
        groupIndexTableView.reloadData()
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groups.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "groupItem") as! GroupIndexTableViewCell
        let group = self.groups[indexPath.row]
        
        cell.nameLabel.text = group.name
        cell.descriptionLabel.text = group.description
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("hello")
    }
}
