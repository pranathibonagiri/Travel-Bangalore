//
//  TRCTableViewCell.swift
//  TravelBangalore
//
//  Created by iOScsebatch on 01/03/17.
//  Copyright © 2017 Sjbit. All rights reserved.
//

import UIKit

class TRCTableViewCell: UITableViewCell {

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
