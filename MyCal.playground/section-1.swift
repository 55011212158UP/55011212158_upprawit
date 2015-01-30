    // Playground - noun: a place where people can play
    
    class calculator{
        
        let x1 : Double
        let x2 : Double
        let op : String
        
        init(x1:Double,x2:Double,op:String){
            
            self.x1 = x1
            self.x2 = x2
            self.op = op
            
        }
        
        func op2 () -> Double{
            
            
            if (op == "+"){
                var sum = a()
                return sum
                
            }
            
            
            if (op == "-"){
                var sum = b()
                return sum
                
            }
            
            
            if (op == "*"){
                var sum = c()
                return sum
                
            }
            
            
            if ( op == "/"){
                var sum = d()
                return sum
                
            }
            
            return 0
            
        }
        
        func a () -> Double{
            
            let x = x1+x2
            return x
        }
        
        
        func b () -> Double{
            
            
            let x = x1-x2
            return x
        }
        
        
        func c () -> Double{
            
            
            let x = x1*x2
            return x
        }
        
        
        func d () -> Double{
            
            
            let x = x1/x2
            return x
        }
        
        
        
    }
    let calculator2=calculator( x1:5, x2:5,op: "+")
    calculator2.op2()
