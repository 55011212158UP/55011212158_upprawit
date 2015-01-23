class zoo {
    let animal : [String] = ["tiger","eagle","buffalo"]
    let food   : [String] = ["meat","snake","grass"]
    let animal1:String
    
    init(animal: String){
        
        self.animal1 = animal
    }
    func ZooZoo() -> String {
        var answer: String = ""
        for(var i=0; i < animal.count ; i++){
            if(animal[i] == animal1){
                answer = food[i];
            }
        }
        return answer
    }
}
let zoo1 = zoo(animal: "eagle")
zoo1.ZooZoo()
