//
//  ChecklistItem.swift
//  Checklist
//
//  Created by Georgi Teoharov on 27.06.19.
//  Copyright © 2019 Georgi Teoharov. All rights reserved.
//

import Foundation



class ChecklistItem: NSObject {
    
    @objc var text = ""
    var checked = false
    
    
    func toggleChecked() {
        checked = !checked
    }
}
