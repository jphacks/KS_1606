//
//  ResultTableViewCell.swift
//  Skippo
//
//  Created by maekawakazuma on 2016/10/29.
//  Copyright © 2016 maekawakazuma. All rights reserved.
//

import UIKit

class ResultTableViewCell: UITableViewCell {

    @IBOutlet weak var menuTitle: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var numbers: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
