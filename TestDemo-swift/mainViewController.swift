//
//  mainViewController.swift
//  TestDemo-swift
//
//  Created by lignpeng on 2019/9/11.
//  Copyright © 2019 com.lignpeng. All rights reserved.
//

import UIKit
import FlexLib

@objc(mainViewController)
class mainViewController: FlexBaseVC,UITableViewDelegate,UITableViewDataSource {
    @objc var tableView:UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell.init()
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}

