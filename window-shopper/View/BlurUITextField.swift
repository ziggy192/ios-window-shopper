//
//  BlurUITextField.swift
//  window-shopper
//
//  Created by Nghia Luu on 8/28/18.
//  Copyright © 2018 Nghia Luu. All rights reserved.
//

import UIKit
@IBDesignable
class BlurUITextField: UITextField {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

    override func prepareForInterfaceBuilder() {
        customize()
    }
    fileprivate func customize() {
        layer.cornerRadius  = 5
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2)
        textAlignment = .center
        
        if let p = placeholder{
            let place = NSAttributedString(string: p, attributes: [NSAttributedStringKey.foregroundColor : #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
        }
        
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customize()
    }
}
