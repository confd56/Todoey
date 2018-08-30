//
//  ViewController.swift
//  Todoey
//
//  Created by CHRISTOPHER NIX on 8/30/18.
//  Copyright © 2018 CHRISTOPHER NIX. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

    let itemArray = ["Finde Mike", "Buy Eggs", "Eat Cake"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

  
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        let cell = tableView.dequeueReusableCell(withIdentifier: "TodoItemCell", for: indexPath)
    
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
       // print(itemArray[indexPath.row])
        
       
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}

