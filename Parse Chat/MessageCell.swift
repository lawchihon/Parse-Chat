//
//  MessageCell.swift
//  Parse Chat
//
//  Created by John Law on 23/2/2017.
//  Copyright © 2017 Chi Hon Law. All rights reserved.
//

import UIKit

class MessageCell: UITableViewCell {

    @IBOutlet weak var message: UILabel!
    @IBOutlet weak var username: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
