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
//              TableViewDataSource
//=================================================
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        
        return Array.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoIItemCell", for: indexPath)
        cell.textLabel?.text = Array[indexPath.row]
        return cell
    }
// ================================================
//              TableViewDataSource
//=================================================
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark{
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
            
        }
        else{
             tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
    
    
    
    
                 // Mark Add New item
  //  @IBAction func AddPressButton(_ sender: Any) {
        // alert =  UIAlertController(title: "Add New item", message: "String", preferredStyle: .de)
        //let action = UIAlertAction(title: "Add Item", style: .default) { (action) in
            // what wil happe once usr click on add item button in UIAlert
      //  }
        //alert.ad
    }

}
