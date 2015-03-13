let tutorialTeam = 56
let editorialTeam = 23
var totalTeam = tutorialTeam + editorialTeam

totalTeam += 1

let tutorialTeamInferred = -19
let tutorialTeamExplicit: Int = -19

let priceInferred = -19.99
let priceExplicit:Double = -19.99

let onSaleInferred = true
let onSaleExplicit:Bool = false

let nameInferred = "Whoopie Cushion"
let nameExplicit:String = "Whoopie Cushion"

if (onSaleInferred) {
    println("\(nameInferred) on sale for \(priceInferred)!")
} else {
    println("\(nameInferred) at regular price: \(priceInferred)!")
}

var shoppingListExplicit = [String]()
shoppingListExplicit = ["Eggs","Milk"]
//var   shoppingListExplicit: [String] = [Eggs","Milk"]

var shoppingList = ["Eggs","Milk"]
println("The shopping list contins \(shoppingList.count) items.")
shoppingList.append("Flour")
shoppingList += "Baking Powder"
shoppingList += ["Chocolate Spread", "Cheese", "Butter"]
var firstItem = shoppingList[0]
shoppingList[0] = "Six eggs"
shoppingList[0...3] = ["Bananas", "Apples"]
shoppingList

if(onSaleInferred){
    println("\(nameInferred) on sale for  \(priceInferred)!")
    
}else{
    println("\(nameInferred) at regular ptice: \(priceInferred)!")
}

shoppingList += ["Baking Powder"]
//shoppingList now contain 4 items
shoppingList += ["Chocolate Spread","Cheese"]
shoppingList.insert("Maple Syrup", atIndex: 0 )
shoppingList.append("Flour")
shoppingList += ["Baking Powder"]

var firstItem2 = shoppingList[0]
shoppingList[4...6] = ["Bananas","Apples"]

let apples = shoppingList.removeLast()
//the last item the array has just been removed
//shoppingList now contains 5 items, and no apples
//the apples constat is now equal to the removed "Apples" string

let mapleSyrup = shoppingList.removeAtIndex(0)
//the item that was at index 0 has just been removed
//shoppingList now contains 6 items, and no Maple Syrup
//the mapleSyrup contant is now equal to the removed "Maple Syrup" string

let array: Array<Int> = [1,2,3,4]
let dictionary: Dictionary<String, Int> = ["dog":1, "elephent": 2]


var airports:[String: String] = ["TYO": "Tokyo", "DUB": "Dublin"]

if  airports.isEmpty{
    println("The airports dictionary is empty.")
} else {
    println("The airports dictionary is not empty.")
}
// prints "the airports dictionary is not empty."

println("The airports dictionary contains \(airports.count) items.")
//  prints "The airports dictionary contains 2 items."


airports["LHR"] = "London"
// the airports dictionary now contains 3 items



airports["LHR"] = "London Heathrow"
//the value for "LHR" has been changed to "London Heathow"


if let oldValue = airports.updateValue("Dublin International", forKey: "DUB"){
    println("The old value for DUB was \(oldValue).")
}
// prints "The old value for DUB was Dublin."


airports["APL"] = "Apple International"
    //
    airports["APL"] = nil
    //
    
if  let removedValue = airports.removeValueForKey("DUB") {
    println("The removed airport's name is \(removedValue).")
} else {
    println("The airports dictionary dose not contain a value for DUB.")
}
//
