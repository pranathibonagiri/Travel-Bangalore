//
//  HITableViewCell.swift
//  TravelBangalore
//
//  Created by iOScsebatch on 28/02/17.
//  Copyright © 2017 Sjbit. All rights reserved.
//

import UIKit

class HITableViewCell: UITableViewCell {

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
