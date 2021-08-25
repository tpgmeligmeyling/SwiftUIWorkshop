//
//  DrinkListView.swift
//  SwiftUIWorkshop
//
//  Created by Jackpotsvr on 26/08/2021.
//

import Foundation
import SwiftUI

struct DrinkListView: View {
    
    @EnvironmentObject var orderDrinkRepository: OrderDrinkRepository

    var body: some View {
        List {
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
