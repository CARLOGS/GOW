//
//  MerchandiseViewController.swift
//  GOW
//
//  Created by CARLO GARCIA on 09/03/25.
//

import UIKit

class MerchandiseViewController: UIViewController {

    @IBOutlet weak var tblMerchandise: UICollectionView!
    @IBOutlet weak var lblTitleMerchandise: UILabel!
    
    // Data Source
    let merchandises : [Merchandise] = [
        Merchandise(
            id: 1,
            description: "merchandise.description.m0",
            currency: "merchandise.currency.m0",
            price: "merchandise.price.m0",
            store: "merchandise.store.m0",
            photo: "M0"
        ),
        Merchandise(
            id: 2,
            description: "merchandise.description.m1",
            currency: "merchandise.currency.m1",
            price: "merchandise.price.m1",
            store: "merchandise.store.m1",
            photo: "M1"
        ),
        Merchandise(
            id: 3,
            description: "merchandise.description.m2",
            currency: "merchandise.currency.m2",
            price: "merchandise.price.m2",
            store: "merchandise.store.m2",
            photo: "M2"
        ),
        Merchandise(
            id: 4,
            description: "merchandise.description.m3",
            currency: "merchandise.currency.m3",
            price: "merchandise.price.m3",
            store: "merchandise.store.m3",
            photo: "M3"
        ),
        Merchandise(
            id: 5,
            description: "merchandise.description.m4",
            currency: "merchandise.currency.m4",
            price: "merchandise.price.m4",
            store: "merchandise.store.m4",
            photo: "M4"
        ),
        Merchandise(
            id: 6,
            description: "merchandise.description.m5",
            currency: "merchandise.currency.m5",
            price: "merchandise.price.m5",
            store: "merchandise.store.m5",
            photo: "M5"
        ),
        Merchandise(
            id: 7,
            description: "merchandise.description.m6",
            currency: "merchandise.currency.m6",
            price: "merchandise.price.m6",
            store: "merchandise.store.m6",
            photo: "M6"
        ),
        Merchandise(
            id: 8,
            description: "merchandise.description.m7",
            currency: "merchandise.currency.m7",
            price: "merchandise.price.m7",
            store: "merchandise.store.m7",
            photo: "M7"
        )
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        tblMerchandise.dataSource = self
        tblMerchandise.delegate = self
        lblTitleMerchandise.text = "merchandise.title".localized
        
        // Cambia el color de fondo del View
        view.setThemeBackgroungColor()
        tblMerchandise.setThemeBackgroungColor()
    }
    
}

// MARK: - Extensions
extension MerchandiseViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    // Rows count
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return merchandises.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "merchandiseCell", for: indexPath) as! MerchandiseCell
        // Llena cada registro con datos e imagen
        cell.lblDescMerchandise.text = merchandises[indexPath.item].description.localized
        cell.lblPriceMerchandise.text = merchandises[indexPath.item].currency.localized + " " + merchandises[indexPath.item].price.localized
        cell.lblStoreMerchandise.text = merchandises[indexPath.item].store.localized
        cell.imgMerchandise.image = UIImage(named: merchandises[indexPath.item].photo)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (collectionView.frame.width - 20) / 2 // 2 columnas con espaciado
        return CGSize(width: width, height: 280)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Seleccionaste: \(merchandises[indexPath.item].price)")
    }
}
