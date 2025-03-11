//
//  MenuOptionCell.swift
//  GOW
//
//  Created by Rafael Gonzalez on 07/03/25.
//

import UIKit

class MenuOptionCell: UITableViewCell {

    
    @IBOutlet weak var menuImage: UIImageView!
    
    @IBOutlet weak var menuLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        // Fonts en código
        // menuLabel.font = UIFont(name: "CGF Locust Resistance", size: 16)!
        
        // Usando sobrecarga a ULabel
        // menuLabel.setCustomFont(fontName: "CGF Locust Resistance", size: 16)
        
        // Usando un struct
        // menuLabel.setCustomFont(fontName: Constants.fontMenuTitle, size: Constants.fontSizeDefault)
        
        // Usando estilos predefinidos
        menuLabel.setTitleFontStyle(fontName: Constants.fontMenuTitle, size: Constants.fontSizeDefault, textStyle: .body)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
