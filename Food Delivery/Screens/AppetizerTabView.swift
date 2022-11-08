//
//  ContentView.swift
//  Food Delivery
//
//  Created by Pavel Bohomolnyi on 01/11/2022.
//

import SwiftUI

struct AppetizerTabView: View {
        
    var body: some View {
        
        TabView {
            
            AppetizerListView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            AccountView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
            
            OrderView()
                .tabItem {
                    Image(systemName: "basket")
                    Text("Order")
                }
        }
    }
}

struct AppetizerTabView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerTabView()
    }
}
