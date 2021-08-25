//
//  DrinkListEntryView.swift
//  SwiftUIWorkshop
//
//  Created by Jackpotsvr on 26/08/2021.
//

import Foundation
import SwiftUI

struct DrinkListEntryView: View {

    @EnvironmentObject var orderDrinkRepository: OrderDrinkRepository
    @Binding var drink: OrderDrink
    
    var body: some View {
        HStack {
            Text(drink.emoji)
                .font(.system(size: 40))
            VStack(alignment: .leading) {
                Text(drink.title)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Text(drink.description)
                    .font(.body)
                Stepper(
                    "Order count \(drink.count)",
                    value: $drink.count,
                    in: orderDrinkRepository.amountPerDrinkRange
                )
            }
        }
    }
}

