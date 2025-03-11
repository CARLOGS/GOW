//
//  HomeViewController.swift
//  GOW
//
//  Created by Rafael Gonzalez on 07/03/25.
//

import UIKit

class HomeViewController: UITableViewController {
    
    @IBOutlet var menuTableView: UITableView!
    
    // DataSource
    let menuOptions : [MenuOption] = [
            MenuOption(
                title:"menu.option.videogames",
                image:"gamecontroller.fill",
                segue:"gamesSegue")
            , MenuOption(
                title:"menu.option.weapons",
                image:"shield.fill",
                segue:"weaponsSegue")
            , MenuOption(
                title:"menu.option.characters",
                image:"person.crop.rectangle.stack.fill",
                segue:"charactersSegue")
            ,MenuOption(
                title:"menu.option.merchandise",
                image:"shippingbox.fill",
                segue:"merchandiseSegue")
        ]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Cambia el color de fondo del View
        view.setThemeBackgroungColor()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuOptions.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Configure the cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MenuOptionCell
        
        // Configure the cell...
        let menuOption = menuOptions[indexPath.row]

        // Utiliza el string a otro idioma
        // cell.menuLabel.text = NSLocalizedString(menuOption.title, comment: "")

        // Utilizando Extensio sobre String
        cell.menuLabel.text = menuOption.title.localized
        cell.menuImage.image = UIImage(systemName: menuOption.image)

        // Aplica el color a la imagen y celda
        cell.setThemeColor()
        cell.contentView.setThemeBackgroungColor()
        cell.menuImage.setThemeColor()

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: menuOptions[indexPath.row].segue, sender: self)
    }
    
}
