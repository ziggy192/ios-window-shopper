//
//  ViewController.swift
//  window-shopper
//
//  Created by Nghia Luu on 8/28/18.
//  Copyright © 2018 Nghia Luu. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTxt: BlurUITextField!
    @IBOutlet weak var priceTxt: BlurUITextField!
    @IBOutlet weak var hourLbl: UILabel!
    @IBOutlet weak var resultLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.layer.frame.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 1, green: 0.6012189984, blue: 0, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: UIControlEvents.touchUpInside)
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
        
        hourLbl.isHidden = true
        resultLbl.isHidden = true
    }

    @objc func calculate()  {
        if let wageTxt = wageTxt.text, let priceTxt = priceTxt.text{
            if let wage = Double(wageTxt), let price = Double(priceTxt){
                view.endEditing(true)
                hourLbl.isHidden = false
                resultLbl.isHidden = false
                resultLbl.text = String(Wage.getHours(forWage: wage, andPrice: price))
            }
        }
    }
    
    @IBAction func clearCalculatorBtnPressed(_ sender: Any) {
        hourLbl.isHidden = true
        resultLbl.isHidden = true
        wageTxt.text = ""
        priceTxt.text = ""
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

