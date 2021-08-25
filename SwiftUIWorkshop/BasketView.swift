//
//  BasketView.swift
//  SwiftUIWorkshop
//
//  Created by Jackpotsvr on 26/08/2021.
//

import Foundation
import SwiftUI

struct BasketView: View {
    
    @EnvironmentObject var orderDrinkRepository: OrderDrinkRepository
    
    var body: some View {
        Group {
            if orderDrinkRepository.isEmpty {
                Text("No drinks in basket")
            } else {
                List {
                    Text("Total price: \(orderDrinkRepository.drinksPriceFormattedString)")
                    ForEach(orderDrinkRepository.orderDrinks.indices) {
                        index in
                        DrinkListEntryView(
                            drink: $orderDrinkRepository.orderDrinks[index]
                        )
                        .environmentObject(orderDrinkRepository)
                    }
                }
            }
        }
        .navigationTitle("Your basket")
    }
}
