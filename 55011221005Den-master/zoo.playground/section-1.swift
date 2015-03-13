class Animal{
   
    let name:String
    let food:String
    
    var nameAnimal:[String] = ["Tiger","bird","Sheep","Monkey"]
    var foodType:[String] = ["Beef", "Rice","Corn","Banana"]
    
    init(name:String,food:String){
        self.name = name
        self.food = food
        
    }
    
    func Add(let nameA:String,let foodN:String) {
        nameAnimal += nameA
        foodType += foodN
        
        
    }
    func search(name:String)->String{
        for(var i=0;i<nameAnimal.count;i++){
            if(nameAnimal[i]==name){
                var str = foodType[i]
                return name+" eat "+str
            }
            else if(foodType[i]==name){
                return name+" is food a "+nameAnimal[i]
            }
           
        }
        return "connot search"
        
    }
    func remove(name:String){
        
    }

}

let test = Animal(name:"cat",food:"fish")
test.Add("chicken",foodN: "rice")
test.search("bird")
test.search("Monkey")
test.search("Corn")






