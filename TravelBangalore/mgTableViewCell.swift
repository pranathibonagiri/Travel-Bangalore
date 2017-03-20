//
//  mgTableViewCell.swift
//  TravelBangalore
//
//  Created by iOScsebatch on 11/02/17.
//  Copyright © 2017 Sjbit. All rights reserved.
//

import UIKit

class mgTableViewCell: UITableViewCell {

    @IBOutlet weak var des: UILabel!
    @IBOutlet weak var title: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
