//:# Unwrapping Any?
//: How to unwrap `Any?` for a dictionay of `[String:Any]`

import UIKit

enum Meal:String{
    case breakfast = "Breakfast"
    case lunch = "Lunch"
    case dinner = "Dinner"
    case snack = "Snack"
}

class Order{
    var meal = Meal.snack
    var food:String = ""
    var toppings:[String] = []
    var price: Double = 0.00
    var order:[String:Any] = [:]
    
    init(order:Any?) {
        
    }
    
    func showOrder(){
        var orderString = meal.rawValue + " Order: " + food
        if toppings.count > 0 {
            orderString += " with "
            for topping in toppings{
                orderString += " " + topping
            }
        }
        orderString += String(format:" %2.2f",price)
        print(orderString)        
    }
}

//: The three dictionaries we'll use.

var breakfastOrder:[String:Any] = ["meal":Meal.breakfast,"food":"French Toast","toppings":["Mango","Orange Cream"]]

var lunchOrder:[String:Any] = ["meal":Meal.lunch,"food":"Hamburger","toppings":"Everything","price":6.95]

var dinnerOrder:[String:Any] = ["meal":Meal.lunch,"food":"Pizza","toppings":["Goat Cheese","Olives","Duck Breast","Red Onions"],"crust":"Thin", "price":16.95]

//: Use the class.
let myOrder = Order(order: breakfastOrder)
myOrder.showOrder()


