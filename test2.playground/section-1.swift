class cal{
    
    let total : Double
    let taxPct : Double
    let subtotal : Double
    
    init(total: Double,taxPct:Double){
        self.total = total
        self.taxPct = taxPct
        subtotal = total / (taxPct + 1)
        
    }
    
    
    func calcTipWithTipPct(tipPct:Double)-> Double {
        return subtotal * tipPct
        
    }
    
    /* func returnPoss()->[Int:Double]{
    let possibleTipsinferred = [0.15,0.18,0.20]
    let possibleTipsExplicit:[Double]=[0.15,018,0.20]
    var numberOfItems = possibleTipsinferred.count
    
    
    var retval = [Int:Double]()
    for possibleTip in possibleTipsinferred{
    
    let intPct = Int(possibleTip*100)
    
    retval[intPct]=calcTipWithTipPct(possibleTip)
    }
    return retval
    }
    
    */
    
    func returnPssibleTip() ->[Int:Double]{
        
        let possibleTipsInferred = [0.15,0.18,0.20]
        let possibleTipsExplicit:[Double]=[0.15,0.18,0.20]
        
        var retval = Dictionary<Int,Double>()
        
        for possibleTip in possibleTipsInferred{
            let intPct = Int(possibleTip*100)
            
            retval[intPct] = calcTipWithTipPct(possibleTip)
            
        }
        return retval
        
    }
    
}

let tipCalc = cal (total: 33.25, taxPct: 0.06)

tipCalc.returnPssibleTip()