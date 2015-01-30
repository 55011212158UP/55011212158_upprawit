class login {
    
    let user: String
    let passwd:String
    let typeKey:Int
    
    var account:Dictionary<String,String> = ["Prawit":"55011212158","Karunpas":"55011212015"]
    init(user:String,passwd:String,typeKey:Int){
        
        self.user = user
        self.passwd = passwd
        self.typeKey = typeKey
        
        
    }
    
    
    func Check() ->String{
        
        var result:String = ""
        
        if(typeKey==1){
            
        }
            
            
        else if(typeKey==2){
            
            if let oldValue = account.updateValue(passwd, forKey: user){
                
            }
        }
            
        else if(typeKey==3){
            
            if let removedValue = account.removeValueForKey(user){
                
            }
        }
            
        else if(typeKey==4){
            
            if let oldValue = account.updateValue(passwd, forKey: user){
                
                
            }
            
        }
            
        else{
            result = "Not option to process"
            
        }
        
        for(key,values) in account{
            println(" \(key) : \(values)")
        }
        
        return result
        
    }
    
}

let test = login(user: "Prawit", passwd: "55011212158", typeKey: 4)