//
//  CustomModifiers.swift
//  Food Delivery
//
//  Created by Pavel Bohomolnyi on 09/11/2022.
//

import SwiftUI

struct StandardButtonStyle: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .buttonStyle(.bordered)
            .tint(.brandPrimary)
            .controlSize(.large)
    }
}
