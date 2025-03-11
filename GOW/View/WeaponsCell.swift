//
//  WeaponsCell.swift
//  GOW
//
//  Created by Rafael Gonzalez on 07/03/25.
//

import UIKit

class WeaponsCell: UITableViewCell {

    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var imgPoster: UIImageView!
    @IBOutlet weak var lblDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        // Font
        lblName.setTitleFontStyle(fontName: Constants.fontMenuTitle, size: Constants.fontSizeDefault, textStyle: .headline)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
