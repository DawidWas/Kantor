//
//  Kantor.swift
//  Kantor
//
//  Created by Dawid Was on 16/01/2019.
//  Copyright © 2019 Dawid Was. All rights reserved.
//

import UIKit

class Kantor: NSObject {
    
    func exchange(amount: Float, currencyCode:String) -> (buy:Float, sell:Float){
        let buy = Float(amount) * 4.21
        let sell = Float(amount) * 3.58
        
      //  let buy = amount * 4.21
      //  let sell = amount * 3.58
        
        return(buy, sell)
    }

}
