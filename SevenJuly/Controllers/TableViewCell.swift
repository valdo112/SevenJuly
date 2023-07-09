//
//  TableViewCell.swift
//  SevenJuly
//
//  Created by Valdo Parlinggoman on 09/07/23.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var officeLabel: UILabel!
    @IBOutlet weak var officeImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
