//
//  AccountViewModel.swift
//  Food Delivery
//
//  Created by Pavel Bohomolnyi on 04/11/2022.
//

import SwiftUI

final class AccountViewModel: ObservableObject {
    
    @Published var firstName = ""
    @Published var lastName = ""
    @Published var email = ""
    @Published var birthdate = Date()
    @Published var extraNapkins = true
    @Published var frequentRefills = false
    
    @Published var alerItem: AlertItem?
    
    var isValidForm: Bool {
        guard !firstName.isEmpty && !lastName.isEmpty && !email.isEmpty else {
            alerItem = AlertContext.invalidForm
            return false
        }
        guard email.isValidEmail else {
            alerItem = AlertContext.invalidEmail
            return false
        }
        return true
    }
    
    func saveChanges() {
        guard isValidForm else { return }
        
        
    }
}
