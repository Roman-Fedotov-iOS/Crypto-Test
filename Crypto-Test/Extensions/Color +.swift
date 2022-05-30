//
//  Color +.swift
//  Crypto-Test
//
//  Created by Roman Fedotov on 26.05.2022.
//

import UIKit

extension UIColor {
    
    enum ColorKey: String {
        case gradientDark
        case gradientLight
        case textColor
        case descriptionBackground
        case chartCellBackground
    }
    
    static func getColor(by key: ColorKey) -> UIColor {
        return UIColor(named: key.rawValue)!
    }
    
    convenience init(hex: Int32) {
        let components = (
            R: CGFloat((hex >> 16) & 0xff) / 255,
            G: CGFloat((hex >> 08) & 0xff) / 255,
            B: CGFloat((hex >> 00) & 0xff) / 255
        )
        self.init(red: components.R, green: components.G, blue: components.B, alpha: 1)
    }
}
