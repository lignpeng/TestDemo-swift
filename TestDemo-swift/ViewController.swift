//
//  ViewController.swift
//  TestDemo-swift
//
//  Created by lignpeng on 2018/10/16.
//  Copyright © 2018年 com.lignpeng. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    lazy var tableView:UITableView = {
        let tableview = UITableView(frame: UIScreen.main.bounds)
        tableview.delegate = self
        tableview.dataSource = self;
        tableview.tableFooterView = UIView()
        return tableview
    }()
    
    lazy var dataSurce: [String] = {
        let dataSurce = ["1"]
        return dataSurce
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white;
        self.title = "TestDemo-Swift"
        self.view.addSubview(tableView)
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataSurce.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellId = "cellID"
        var cell = tableView.dequeueReusableCell(withIdentifier: cellId)
        if (cell == nil) {
            cell = UITableViewCell(style: .default, reuseIdentifier: cellId)
        }
        cell?.textLabel?.text = self.dataSurce[indexPath.row]
        return cell!
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

