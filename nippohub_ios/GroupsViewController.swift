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
    @IBOutlet var groupIndexTable: UITableView!
    let disposeBag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()
        groupIndexTable.delegate = self
        groupIndexTable.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
        //let groups = Observable<[Group]>.just([Group(name: "test1", description: "body1"), Group(name: "test2", description: "body2"), Group(name: "test3", description: "body3")])
        //.disposed(by: disposeBag)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        /*let groups = Observable<[Int]>.just([1, 2, 4])
        groups.bind(to: groupIndexTable.rx.items(cellIdentifier: "groupItem", cellType: UITableViewCell.self)){ row, element, cell in
            let name = cell.viewWithTag(1) as! UILabel
            let description = cell.viewWithTag(2) as! UILabel
            
            name.text = "name"
            description.text = "description"
            print("tete")
        }

        groups.bind(to: groupIndexTable.rx.items(cellIdentifier: "groupItem")) { row, element, cell in
            let name = cell.viewWithTag(1) as! UILabel
            let description = cell.viewWithTag(2) as! UILabel
            
            name.text = "name"
            description.text = "description"
            print("tete")
        }*/
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("ss")
        return 10
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "groupItem")!
        
        let name = cell.viewWithTag(1) as! UILabel
        let description = cell.viewWithTag(2) as! UILabel
        
        name.text = "name"
        description.text = "description"
        
        return cell
    }
}
