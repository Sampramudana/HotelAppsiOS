//
//  DataTableViewCell.swift
//  HotelAppsiOS
//
//  Created by Becak Holic on 11/17/17.
//  Copyright © 2017 Sam Pramudana. All rights reserved.
//

import UIKit

class DataTableViewCell: UITableViewCell {

    @IBOutlet weak var labelRate: UILabel!
    @IBOutlet weak var labelAlamat: UILabel!
    @IBOutlet weak var labelNamaHotel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
