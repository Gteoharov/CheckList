//
//  ChecklistTableViewCell.swift
//  Checklist
//
//  Created by Georgi Teoharov on 4.07.19.
//  Copyright © 2019 Georgi Teoharov. All rights reserved.
//

import UIKit

class ChecklistTableViewCell: UITableViewCell {

    
    @IBOutlet weak var checklistLabel: UILabel!
    @IBOutlet weak var toDoTextLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
