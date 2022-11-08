//
//  OrderView.swift
//  Food Delivery
//
//  Created by Pavel Bohomolnyi on 01/11/2022.
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
                            AppetizerRowView(appetizer: appetizer)
                        }
                        .onDelete(perform: order.deleteItem)
                    }
                    .listStyle(PlainListStyle())
                    
                    Button {
                        
                    } label: {
                        APButton(title: "$\(order.totalPrice, specifier: "%.2f") - Place Order")
                    }
                    .padding(.bottom, 25)
                }
                
                if order.items.isEmpty {
                    EmptyState(imageName: "empty-order",
                               message: "You have no items in your order. \nPlease add an appetizer!")
                }
            }
            .navigationTitle("Orders")
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
