//
//  main.swift
//  StoreProtocolDemo
//
//  Created by Raphat Aektantidamrong on 19/1/2567 BE.
//

import Foundation

protocol FoodProduct {
    var price: Int { get }
    
}

enum Fruit: FoodProduct {
    case apple
    case banana
    
    var price: Int {
        switch self {
        case .apple:
            return 10
        case .banana:
            return 2
        }
    }
}

struct Basket {
    var food: [FoodProduct] = []
    
    func totalPrice() -> Int {
        
        let result = food.reduce(0, { $0 + $1.price })
        
//        var result = 0
//        for item in food {
//            result += item.price
//        }
        
        return result
    }
}

struct FrozenFood : FoodProduct {
    
    var name:String
    var price: Int
    
}

var fish = FrozenFood(name: "fish", price: 200)

var basket = Basket()
basket.food.append(Fruit.apple)
basket.food.append(Fruit.banana)
basket.food.append(Fruit.banana)
basket.food.append(fish)

print("TOTAL IS: \(basket.totalPrice())")

