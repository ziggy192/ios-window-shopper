//
//  ViewController.swift
//  window-shopper
//
//  Created by Nghia Luu on 8/28/18.
//  Copyright © 2018 Nghia Luu. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var txtWage: BlurUITextField!
    @IBOutlet weak var txtPrice: BlurUITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.layer.frame.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 1, green: 0.6012189984, blue: 0, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        txtWage.inputAccessoryView = calcBtn
        txtPrice.inputAccessoryView = calcBtn
        
        
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

