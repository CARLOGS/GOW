//
//  CharatersCell.swift
//  GOW
//
//  Created by CARLO GARCIA on 09/03/25.
//

import UIKit

protocol CustomCellDelegate: AnyObject {
    func showAlert(title: String, message: String)
}

class CharatersCell: UITableViewCell {

    weak var delegate: CustomCellDelegate?
    
    @IBOutlet weak var imgCharacter: UIImageView!
    @IBOutlet weak var lblNameCharacter: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    @IBAction func btnInfoCharacter(_ sender: Any) {
        delegate?.showAlert(title: "Info", message: lblDescription.text?.localized ?? "")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
        
        // Font
        lblNameCharacter.setTitleFontStyle(fontName: Constants.fontMenuTitle, size: Constants.fontSizeDefault, textStyle: .headline)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
