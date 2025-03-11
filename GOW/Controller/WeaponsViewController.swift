//
//  WeaponsViewController.swift
//  GOW
//
//  Created by Rafael Gonzalez on 07/03/25.
//

import UIKit

class WeaponsViewController: UIViewController {
    @IBOutlet weak var tblWeapons: UITableView!
    
    // Data Source
    var arrayWeapons : [Weapon] = []
    //    CGO Weapons
    let cgoWeapons : [Weapon] = [
        Weapon(
            id: 1, name: "weapon.name.lancer",
            description: "weapon.description.lancer",
            poster: "Mark1LancerAssaultRifle"
            ),
        Weapon(
            id: 2, name: "weapon.name.lancer2",
            description: "weapon.description.lancer2",
            poster: "LancerMk2"
            ),
        Weapon(
            id: 3, name: "weapon.name.sniper",
            description: "weapon.description.sniper",
            poster: "LongshotSniperRifle"

            ),
        Weapon(
            id: 4, name: "weapon.name.hammer_of_dawn",
            description: "weapon.description.hammer_of_dawn",
            poster: "HammerOfDawn"
            ),
        Weapon(
            id: 5, name: "weapon.name.mx8",
            description: "weapon.description.mx8",
            poster: "SnubPistol"
        )
    ]
        
    //    Locus Weapons
    let locusWeapons : [Weapon] = [
        Weapon(
            id: 1, name: "weapon.name.boomshot",
            description: "weapon.description.boomshot",
            poster: "BoomshotGrenadeLauncher"
        ),
            Weapon(
                id: 2, name: "weapon.name.hammerburstii",
                description: "weapon.description.hammerburstii",
                poster: "HammerburstII"
            ),
        Weapon(
            id: 3, name: "weapon.name.mulcher",
            description: "weapon.description.mulcher",
            poster: "Mulcher"
        ),
        Weapon(
            id: 4, name: "weapon.name.bolo_grenade",
            description: "weapon.description.bolo_grenade",
            poster: "BoloGrenade"
        ),
        Weapon(
            id: 5, name: "weapon.name.boltok",
            description: "weapon.description.boltok",
            poster: "BoltokPistol"
        )
    ]


    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        // Cambia el color de fondo del View
        view.setThemeBackgroungColor()
        tblWeapons.setThemeBackgroungColor()
        tabBarController?.tabBar.backgroundColor = .gowBlack1
        
        tblWeapons.dataSource = self
        tblWeapons.delegate = self

        let tabItemTag = self.tabBarItem.tag
        
        // Utiliza Constants que el valor es 0
        if tabItemTag == Constants.tagCGO {
            print("Weapons")
            arrayWeapons = cgoWeapons
        } else {
            print("Locus")
            arrayWeapons = locusWeapons
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension WeaponsViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayWeapons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! WeaponsCell
        let weapon = arrayWeapons[indexPath.row]
        
        // cell.lblName.text = NSLocalizedString( weapon.name, comment: "")
        cell.lblName.text = weapon.name.localized
        cell.imgPoster.image = UIImage(named: weapon.poster)

        // Set colors
        cell.setThemeBackgroungColor()
        cell.contentView.setThemeBackgroungColor()
        cell.imgPoster.setThemeBackgroungColor()
        
        cell.lblName.setRedTitleFontStyle(fontName: Constants.fontMenuTitle, size: Constants.fontSizeDefault, textStyle: .body)
        cell.lblDescription.setTextFontStyle(fontName: "", size: Constants.fontSizeDefault, textStyle: .body)

        // cell.lblDescription.text = NSLocalizedString( weapon.description, comment: "")
        cell.lblDescription.text = weapon.description.localized

        return cell
    }
}
