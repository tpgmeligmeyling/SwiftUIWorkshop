//
//  OrderDrinkRepository.swift
//  SwiftUIWorkshop
//
//  Created by Jackpotsvr on 26/08/2021.
//

import Foundation

class OrderDrinkRepository: ObservableObject {
    
    @Published var orderDrinks: [OrderDrink] = .dummyData
    private let minAmountPerDrink = 0
    private let maxAmountPerDrink = 99
    lazy var amountPerDrinkRange = minAmountPerDrink...maxAmountPerDrink
    
    var drinksCountTotal: Int {
        orderDrinks
            .map(\.count)
            .reduce(0, +)
    }
    
    private var drinksPriceTotal: Double {
        orderDrinks
            .map { $0.price * Double($0.count) }
            .reduce(0, +)
    }
    
    var drinksPriceFormattedString: String {
        struct Static {
            static let numberFormatter: NumberFormatter = {
                let numberFormatter = NumberFormatter()
                numberFormatter.numberStyle = .currency
                return numberFormatter
            }()
        }
        
        let number = NSNumber(value: drinksPriceTotal)
        return Static.numberFormatter.string(from: number)!
    }
    
    var isEmpty: Bool {
        drinksCountTotal == 0
    }
}
