//
//  ViewController.swift
//  rainbowRoad
//
//  Created by Isabell Frischmann on 9/10/18.
//  Copyright © 2018 Isabell Frischmann. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        set the table size to 120px
        self.tableView.rowHeight = 120.0
        
        tableView.dataSource = self
//        tableView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cells", for: indexPath)
        
//        set the colors
        var colors = [UIColor.red, UIColor.orange, UIColor.yellow, UIColor.green, UIColor.blue, UIColor.purple]
        
//        indexPath.row is an array that means you can access it with indexes
        print("indexPath ->", indexPath.row)

        if indexPath.row == 0 {
            cell.contentView.backgroundColor = colors[indexPath.row]
        }
        
        if indexPath.row == 1 {
            cell.contentView.backgroundColor = colors[indexPath.row]
        }
        if indexPath.row == 2 {
            cell.contentView.backgroundColor = colors[indexPath.row]
        }
        if indexPath.row == 3 {
            cell.contentView.backgroundColor = colors[indexPath.row]
        }
        if indexPath.row == 4 {
            cell.contentView.backgroundColor = colors[indexPath.row]
        }
        if indexPath.row == 5 {
            cell.contentView.backgroundColor = colors[indexPath.row]
        }
        if indexPath.row == 6 {
            cell.contentView.backgroundColor = colors[indexPath.row]
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
}
