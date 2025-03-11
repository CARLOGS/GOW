//
//  LabelExtension.swift
//  GOW
//
//  Created by CARLO GARCIA on 08/03/25.
//
import UIKit

extension UILabel {
    // Version original
//    func setCustomFont(fontName: String, size: CGFloat) {
//        guard let customFont = UIFont(name: fontName, size: size) else {
//            self.font = UIFont(name: fontName, size: size)
//            
//            return
//        }
//        
//        self.font = customFont
//    }
    
    func setTextFontStyle() {
        self.backgroundColor = .clear
        self.textColor = .black
    }
    
    // Version con font style and colors
    func setTitleFontStyle(fontName: String, size: CGFloat, textStyle: UIFont.TextStyle) {
        self.backgroundColor = .gowBlack1
        self.textColor = .gowText
        
        setDefaultFontStyle(fontName: fontName, size: size, textStyle: textStyle)
    }
    
    func setRedTitleFontStyle(fontName: String, size: CGFloat, textStyle: UIFont.TextStyle) {
        self.backgroundColor = .gowBlack1
        self.textColor = .gowRed
        
        setDefaultFontStyle(fontName: fontName, size: size, textStyle: textStyle)
    }
    
    func setTextFontStyle(fontName: String, size: CGFloat, textStyle: UIFont.TextStyle) {
        self.backgroundColor = .gowBlack1
        self.textColor = .gowText
        
        setDefaultFontStyle(fontName: fontName, size: size, textStyle: textStyle)
    }
    
    private func setDefaultFontStyle(fontName: String, size: CGFloat, textStyle: UIFont.TextStyle) {
        guard let customFont = UIFont(name: fontName, size: size) else {
            self.font = UIFont(name: fontName, size: size)
            
            return
        }
        
        self.font = customFont
        
        // Valida funcionalidad para versiones anteriores
        if #available(iOS 11.0, *) {
            let fonrMetrics = UIFontMetrics(forTextStyle: textStyle)
            self.font = fonrMetrics.scaledFont(for: customFont)
            self.adjustsFontForContentSizeCategory = true
        }
    }
}
