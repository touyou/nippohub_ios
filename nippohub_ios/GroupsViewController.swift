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

class GroupsViewController: UIViewController {
    @IBOutlet var groupIndexTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let groups = Observable.from([Group(name: "test1", description: "body1"), Group(name: "test2", description: "body2"), Group(name: "test3", description: "body3")])
        
        groups.subscribe(onNext: { group in
            print(group.name + " " + group.description)
        })
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
