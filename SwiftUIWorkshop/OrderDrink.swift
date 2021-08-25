//
//  OrderDrink.swift
//  SwiftUIWorkshop
//
//  Created by Jackpotsvr on 25/08/2021.
//

import Foundation

struct OrderDrink: Identifiable {
    
    var id = UUID()
    var emoji: String
    var title: String
    var description: String
    var count: Int
    var price: Double
}
