//
//  ViewController.swift
//  Checklist
//
//  Created by Georgi Teoharov on 27.06.19.
//  Copyright © 2019 Georgi Teoharov. All rights reserved.
//

import UIKit

class ChecklistViewController: UITableViewController {
    
    var todoList: TodoList
    
    required init?(coder aDecoder: NSCoder) {
        todoList = TodoList()
        super.init(coder: aDecoder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem", for: indexPath)
        
        if let label = cell.viewWithTag(1000) as? UILabel {
            if indexPath.row == 0 {
                label.text = todoList.todos[0].text
            } else if indexPath.row == 1 {
                label.text = todoList.todos[1].text
            } else if indexPath.row == 2 {
                label.text = todoList.todos[2].text
            } else if indexPath.row == 3 {
                label.text = todoList.todos[3].text
            } else if indexPath.row == 4 {
                label.text = todoList.todos[4].text
            }
        }
        configureCheckmark(for: cell, at: indexPath)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
            configureCheckmark(for: cell, at: indexPath)
            tableView.deselectRow(at: indexPath, animated: true)
        }
    }
    
    func configureCheckmark(for cell: UITableViewCell, at indexPath: IndexPath) {
        if indexPath.row == 0 {
            if todoList.todos[0].checked {
                cell.accessoryType = .none
            } else {
                cell.accessoryType = .checkmark
            }
            todoList.todos[0].checked = !todoList.todos[0].checked
        } else if indexPath.row == 1 {
            if todoList.todos[1].checked {
                cell.accessoryType = .none
            } else {
                cell.accessoryType = .checkmark
            }
            todoList.todos[1].checked = !todoList.todos[1].checked
        } else if indexPath.row == 2 {
            if todoList.todos[2].checked {
                cell.accessoryType = .none
            } else {
                cell.accessoryType = .checkmark
            }
            todoList.todos[2].checked = !todoList.todos[2].checked
        } else if indexPath.row == 3 {
            if todoList.todos[3].checked {
                cell.accessoryType = .none
            } else {
                cell.accessoryType = .checkmark
            }
            todoList.todos[3].checked = !todoList.todos[3].checked
        } else if indexPath.row == 4 {
            if todoList.todos[4].checked {
                cell.accessoryType = .none
            } else {
                cell.accessoryType = .checkmark
            }
            todoList.todos[4].checked = !todoList.todos[4].checked
        }
    }
}

