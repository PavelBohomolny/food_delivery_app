//
//  ImageTemplate.swift
//  Food Delivery
//
//  Created by Pavel Bohomolnyi on 09/11/2022.
//

import SwiftUI

struct ImageTemplate: View {
    
    let title: String
    
    var body: some View {
        Image(title)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 120, height: 90)
            .cornerRadius(8)
    }
}

struct ImageTemplate_Previews: PreviewProvider {
    static var previews: some View {
        ImageTemplate(title: "food-placeholder")
    }
}
