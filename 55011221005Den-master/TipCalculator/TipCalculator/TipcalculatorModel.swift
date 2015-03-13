//
//  TipcalculatorModel.swift
//  TipCalculator
//
//  Created by student on 9/12/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import Foundation
class TipCalculatorModel{
    
    //2
    var total: Double
    var taxPct: Double
    var subtotal: Double{
    get{ return total/(taxPct+1)}
    }
    
    //3
    init(total:Double, taxPct:Double){
        self.total = total
        self.taxPct = taxPct
    
        
    }
    //4
    func calcTipWithTipPct(tipPct:Double) -> Double{
        
        return subtotal * tipPct
    }
    //1
    func returnPossibleTip() -> [Int: Double]{
        let possibleTipsInferred = [0.15, 0.18, 0.20]
        let possibleTipsExplicit:[Double] = [0.15, 0.18, 0.20]
       
        
        //2
        var reval = [Int:Double]()
        for possibleTip in possibleTipsInferred{
            let intPct = Int(possibleTip*100)
            reval[intPct] = calcTipWithTipPct(possibleTip)
            
        }
        return reval
        
        
    }
    
}


