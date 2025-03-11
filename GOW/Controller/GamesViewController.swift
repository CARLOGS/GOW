//
//  GamesViewController.swift
//  GOW
//
//  Created by Rafael Gonzalez on 07/03/25.
//

import UIKit

class GamesViewController: UIViewController {
    @IBOutlet weak var gameImage: UIImageView!
    
    @IBOutlet weak var imagePageControl: UIPageControl!
    
    @IBAction func rightSwipeDone(_ sender: Any) {
        print("Right swipe done !")
        
        if ( imagePageControl.currentPage == 0 ) {
            imagePageControl.currentPage = gamePosters.count - 1
        } else {
            imagePageControl.currentPage -= 1
        }
            
        pageChanged()
        
        gameImage.image = UIImage(named: gamePosters[imagePageControl.currentPage].description)
    }
    
    @IBAction func leftSwipeDone(_ sender: Any) {
        print("Left swipe done !")
        
        if ( imagePageControl.currentPage == gamePosters.count - 1 ) {
            imagePageControl.currentPage = 0
        } else {
            imagePageControl.currentPage += 1
        }
            
        pageChanged()

        gameImage.image = UIImage(named: gamePosters[imagePageControl.currentPage].description)
    }
    
    //datasource :P
    let gamePosters = Array(0...7)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        // Cambia el color de fondo del View
        view.setThemeBackgroungColor()
        
        imagePageControl.numberOfPages = gamePosters.count
        // Configurar imágenes personalizadas (iOS 14+)
        if let selectedImage = UIImage(named: "gow_logo"),
           let defaultImage = UIImage(systemName: "circle") {
            imagePageControl.setIndicatorImage(defaultImage, forPage: 0) // Imagen para las páginas normales
            imagePageControl.setIndicatorImage(selectedImage, forPage: imagePageControl.currentPage) // Imagen seleccionada
        }
        
        // Cambiar de página al tocar el pageControl
        imagePageControl.addTarget(self, action: #selector(pageChanged), for: .valueChanged)
        pageChanged()
        
        gameImage.image = UIImage(named: gamePosters.first?.description ?? "0")
    }
    
    @objc func pageChanged() {
        print("Página actual: \(imagePageControl.currentPage)")
        
        gameImage.image = UIImage(named: gamePosters[imagePageControl.currentPage].description)

        // Actualizar los iconos de los indicadores
        if let selectedImage = UIImage(named: "gow_logo"),
           let defaultImage = UIImage(systemName: "circle") {
            for i in 0..<imagePageControl.numberOfPages {
                let image = (i == imagePageControl.currentPage) ? selectedImage : defaultImage
                imagePageControl.setIndicatorImage(image, forPage: i)
            }
        }
    }}
