//
//  OrderView.swift
//  Food Delivery
//
//  Created by Pavel Bohomolnyi on 01/11/2022.
//

import SwiftUI

struct OrderView: View {
    
    @State private var orderItems = MockData.orderItems
    
    var body: some View {
        
        NavigationStack {
            
            ZStack {
                
                VStack {
                    
                    List {
                        
                        ForEach(orderItems) { appetizer in
                            AppetizerRowView(appetizer: appetizer)
                        }
                        .onDelete(perform: deleteItem)
                    }
                    .listStyle(PlainListStyle())
                    
                    Button {
                        
                    } label: {
                        APButton(title: "Order")
                    }
                    .padding(.bottom, 25)
                }
                
                if orderItems.isEmpty {
                    EmptyState(imageName: "empty-order",
                               message: "You have no items in your order. \nPlease add an appetizer!")
                }
            }
            .navigationTitle("Orders")
        }
    }
    
    func deleteItem(at offesets: IndexSet) {
        orderItems.remove(atOffsets: offesets)
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
