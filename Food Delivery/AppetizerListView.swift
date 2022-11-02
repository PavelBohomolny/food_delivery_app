//
//  AppetizerListView.swift
//  Food Delivery
//
//  Created by Pavel Bohomolnyi on 01/11/2022.
//

import SwiftUI

struct AppetizerListView: View {
        
    var body: some View {
        
        NavigationStack {
            
            List(MockData.appetizers) { appetizer in
                AppetizerRowView(appetizer: appetizer)
            }
            .navigationTitle("Appetizers")
        }
    }
}

struct AppetizerListView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListView()
    }
}
