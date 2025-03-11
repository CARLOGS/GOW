//
//  MerchandiseCell.swift
//  GOW
//
//  Created by CARLO GARCIA on 10/03/25.
//

import UIKit

class MerchandiseCell: UICollectionViewCell {
    
    @IBOutlet weak var imgMerchandise: UIImageView!
    @IBOutlet weak var lblDescMerchandise: UILabel!
    @IBOutlet weak var lblPriceMerchandise: UILabel!
    @IBOutlet weak var lblStoreMerchandise: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
    }
}
