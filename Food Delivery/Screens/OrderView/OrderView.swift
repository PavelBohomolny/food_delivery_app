//
//  OrderView.swift
//  Food Delivery
//
//  Created by Pavel Bohomolnyi on 01/11/2022.
//

import SwiftUI

struct OrderView: View {
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    ForEach(MockData.orderItems) { appetizer in
                        AppetizerRowView(appetizer: appetizer)
                    }
                }
                .listStyle(PlainListStyle())
                
                Button {
                    
                } label: {
                    APButton(title: "Order")
                }
                .padding(.bottom, 25)
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
