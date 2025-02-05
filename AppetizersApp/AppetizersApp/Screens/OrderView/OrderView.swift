//
//  OrderView.swift
//  AppetizersApp
//
//  Created by luna.henseler on 27/1/25.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    List {
                        ForEach(order.items) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: order.deleteItems)
                    }
                    .listStyle(PlainListStyle())
                    
                    Button {
                        print("order")
                    } label: {
                        //APButton(title: "$\(order.totalPrice, specifier: "%.2f") - Order")
                        Text("$\(order.totalPrice, specifier: "%.2f") - Order")
                    }
                    .modifier(StandardButtonstyle())
                    .padding(.bottom, 25)
                }
                
                if order.items.isEmpty {
                    EmptyState(imageName: "empty-order",
                               message: "You have no items in your order.\nPlease add an appetizer.")
                }
            }
            .navigationTitle("🗒️ Order")
        }
    }
    
    
}

#Preview {
    OrderView()
}
