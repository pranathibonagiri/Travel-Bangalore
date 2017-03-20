//
//  UHLITableViewCell.swift
//  TravelBangalore
//
//  Created by iOScsebatch on 02/03/17.
//  Copyright © 2017 Sjbit. All rights reserved.
//

import UIKit

class UHLITableViewCell: UITableViewCell {

    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var info: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
