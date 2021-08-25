//
//  OrderDrink+Dummy.swift
//  SwiftUIWorkshop
//
//  Created by Jackpotsvr on 25/08/2021.
//

import Foundation

extension Array where Element == OrderDrink {
    
    static var dummyData: [OrderDrink] {
        [
            OrderDrink(
                emoji: "☕️",
                title: "Drink 1",
                description: "Long boring description. Long boring description. Long boring description",
                count: 0,
                price: 4.50
            ),
            OrderDrink(
                emoji: "🍵",
                title: "Drink 2",
                description: "Long boring description. Long boring description. Long boring description",
                count: 0,
                price: 4.0
            ),
            OrderDrink(
                emoji: "🥛",
                title: "Drink 3",
                description: "Long boring description. Long boring description. Long boring description",
                count: 0,
                price: 2.50
            ),
            OrderDrink(
                emoji: "🍺",
                title: "Drink 4",
                description: "Long boring description. Long boring description. Long boring description",
                count: 0,
                price: 3.5
            ),
            OrderDrink(
                emoji: "🥂",
                title: "Drink 5",
                description: "Long boring description. Long boring description. Long boring description",
                count: 0,
                price: 7.2
            ),
            OrderDrink(
                emoji: "🍷",
                title: "Drink 6",
                description: "Long boring description. Long boring description. Long boring description",
                count: 0,
                price: 6.0
            ),
            OrderDrink(
                emoji: "🥃",
                title: "Drink 7",
                description: "Long boring description. Long boring description. Long boring description",
                count: 0,
                price: 8.0
            ),
            OrderDrink(
                emoji: "🍸",
                title: "Drink 8",
                description: "Long boring description. Long boring description. Long boring description",
                count: 0,
                price: 5.8
            )
        ]
    }
}
