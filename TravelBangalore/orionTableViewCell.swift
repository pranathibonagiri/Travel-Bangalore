//
//  orionTableViewCell.swift
//  TravelBangalore
//
//  Created by iOScsebatch on 11/02/17.
//  Copyright © 2017 Sjbit. All rights reserved.
//

import UIKit

class orionTableViewCell: UITableViewCell {

    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var des: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
