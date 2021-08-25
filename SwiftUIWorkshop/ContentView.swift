//
//  ContentView.swift
//  SwiftUIWorkshop
//
//  Created by Jackpotsvr on 25/08/2021.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject private var orderDrinkRepository = OrderDrinkRepository()
    
    var body: some View {
        NavigationView {
            DrinkListView()
                .environmentObject(orderDrinkRepository)
                .navigationTitle("Order a drink")
                .toolbar {
                    NavigationLink(
                        destination: BasketView()
                        .environmentObject(orderDrinkRepository),
                        label: {
                            Image(systemName: "cart.fill")
                        })
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
