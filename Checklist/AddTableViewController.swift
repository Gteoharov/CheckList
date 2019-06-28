//
//  AddTableViewController.swift
//  Checklist
//
//  Created by Georgi Teoharov on 28.06.19.
//  Copyright © 2019 Georgi Teoharov. All rights reserved.
//

import UIKit

class AddTableViewController: UITableViewController {

    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func cancel(_ sender: UIBarButtonItem) {
        navigationController?.popViewController(animated: true)
    }
    
    
    
    @IBAction func done(_ sender: UIBarButtonItem) {
        navigationController?.popViewController(animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.largeTitleDisplayMode = .never
    }
}
