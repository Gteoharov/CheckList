//
//  AddTableViewController.swift
//  Checklist
//
//  Created by Georgi Teoharov on 28.06.19.
//  Copyright © 2019 Georgi Teoharov. All rights reserved.
//

import UIKit

protocol AddItemViewControllerDelegate: class {
    
    func addItemViewControllerDidCancel(_ controller: AddTableViewController)
    func addItemViewController(_ controller: AddTableViewController, didFinishAdding item: ChecklistItem)
    
}

class AddTableViewController: UITableViewController {
    
    weak var delegate: AddItemViewControllerDelegate?
    
    @IBOutlet weak var cancelBarButton: UIBarButtonItem!
    @IBOutlet weak var addBarButton: UIBarButtonItem!
    @IBOutlet weak var textfield: UITextField!
    
    
    @IBAction func cancel(_ sender: UIBarButtonItem) {
        navigationController?.popViewController(animated: true)
        delegate?.addItemViewControllerDidCancel(self)
    }
    
    
    @IBAction func done(_ sender: Any) {
        navigationController?.popViewController(animated: true)
        let item = ChecklistItem()
        if let textFieldText = textfield.text {
            item.text = textFieldText
        }
        item.checked = false
        delegate?.addItemViewController(self, didFinishAdding: item)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textfield.delegate = self
        navigationItem.largeTitleDisplayMode = .never
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        textfield.becomeFirstResponder()
    }
    
    override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        return nil
    }
}

extension AddTableViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.textfield.resignFirstResponder()
        return false
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        guard let oldText = textfield.text, let stringRange = Range(range, in: oldText) else {
            return false
        }
        
        let newText = oldText.replacingCharacters(in: stringRange, with: string)
        if newText.isEmpty {
            addBarButton.isEnabled = false
        } else {
            addBarButton.isEnabled = true
        }
        return true
    }
}
