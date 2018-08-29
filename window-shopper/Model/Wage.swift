//
//  Wage.swift
//  window-shopper
//
//  Created by Nghia Luu on 8/29/18.
//  Copyright © 2018 Nghia Luu. All rights reserved.
//

import Foundation
class Wage{
    class func  getHours(forWage wage: Double, andPrice price: Double) -> Int{
        return Int(ceil(price/wage))
//        return Int(round(price/wage))
    }
}
