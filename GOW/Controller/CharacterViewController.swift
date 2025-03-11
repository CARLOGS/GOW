//
//  PersonageViewController.swift
//  GOW
//
//  Created by CARLO GARCIA on 09/03/25.
//

import UIKit

class CharacterViewController: UIViewController, CustomCellDelegate {

    @IBOutlet weak var tblCharacters: UITableView!
    @IBOutlet weak var lblTitleCharacter: UILabel!
    
    // Data Source
    let characters : [Character] = [
        Character(
            id: 1, name: "character.name.lancer",
            description: "character.description.lancer",
            photo: "P0"
            ),
        Character(
            id: 2, name: "character.name.dominic",
            description: "character.description.dominic",
            photo: "P1"
            ),
        Character(
            id: 3, name: "character.name.raam",
            description: "character.description.raam",
            photo: "P2"

            ),
        Character(
            id: 4, name: "character.name.augustus",
            description: "character.description.augustus",
            photo: "P3"
            ),
        Character(
            id: 5, name: "character.name.damon",
            description: "character.description.damon",
            photo: "P4"
            ),
        Character(
            id: 6, name: "character.name.anya",
            description: "character.description.anya",
            photo: "P5"
            ),
        Character(
            id: 7, name: "character.name.anthony",
            description: "character.description.anthony",
            photo: "P6"
            ),
        Character(
            id: 8, name: "character.name.minh",
            description: "character.description.minh",
            photo: "P7"
        )
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        // Cambia el color de fondo del View
        view.setThemeBackgroungColor()
        tblCharacters.setThemeBackgroungColor()
        
        tblCharacters.dataSource = self
        tblCharacters.delegate = self
        
        lblTitleCharacter.text = "character.title".localized

        let fixedRowHeight: CGFloat = 300 // Set your desired fixed height
        tblCharacters.rowHeight = fixedRowHeight
    }
    
}

// MARK: - Extensions
extension CharacterViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return characters.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CharatersCell
        let character = characters[indexPath.row]
        
        // cell.lblName.text = NSLocalizedString( weapon.name, comment: "")
        cell.lblNameCharacter.text = character.name.localized
        cell.imgCharacter.image = UIImage(named: character.photo)
        cell.lblDescription.text = character.description.localized

        // Asigna el delegado para responder al Alert del boton
        cell.delegate = self
        
        // Set colors
        cell.setThemeBackgroungColor()
        cell.contentView.setThemeBackgroungColor()
        cell.imgCharacter.setThemeBackgroungColor()
        
        cell.lblNameCharacter.setRedTitleFontStyle(fontName: "", size: Constants.fontSizeTitle, textStyle: .body)
        
        return cell
    }

    // MARK: - CustomCellDelegate
    func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
}
