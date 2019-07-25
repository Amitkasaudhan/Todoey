//
//  ViewController.swift
//  Todoey
//
//  Created by apple on 25/07/19.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit

class ToDoViewController: UITableViewController {
    let Array = ["q","d","x"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

// ================================================
//              TableViewDelegate
//=================================================
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Array.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoIItemCell", for: indexPath)
        cell.textLabel?.text = Array[indexPath.row]
        return cell
    }
}

