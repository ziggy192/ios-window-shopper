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

    override func draw(_ rect: CGRect) {
        //never implement this and leave it empty
        //performance issue
        
        let size : CGFloat  = 20
        let currencyLBL  = UILabel(frame: CGRect(x: 5, y: frame.height / 2 - size / 2 , width: size, height: size))
        currencyLBL.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLBL.backgroundColor = #colorLiteral(red: 0.7243637443, green: 0.7200595737, blue: 0.727673471, alpha: 0.7954837329)
        currencyLBL.textAlignment = .center
        currencyLBL.layer.cornerRadius = 5
        currencyLBL.clipsToBounds = true
        let numberSign = NumberFormatter()
        numberSign.locale = .current
        numberSign.numberStyle = .currency
        currencyLBL.text = numberSign.currencySymbol
        self.addSubview(currencyLBL)
        
        
    }
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
