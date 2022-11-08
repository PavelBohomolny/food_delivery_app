//
//  AccountViewModel.swift
//  Food Delivery
//
//  Created by Pavel Bohomolnyi on 04/11/2022.
//

import SwiftUI

final class AccountViewModel: ObservableObject {
    
    @AppStorage("user") private var userData: Data?
    @Published var user = User()
    @Published var alerItem: AlertItem?
    
    func saveChanges() {
        guard isValidForm else { return }
        
        do {
            let data = try JSONEncoder().encode(user)
            userData = data
            alerItem = AlertContext.userSaveSuccess
        } catch {
            alerItem = AlertContext.invalidUserData
        }
    }
    
    func retrieveUser() {
        guard let userData = userData else { return }
        
        do {
            user = try JSONDecoder().decode(User.self, from: userData)
        } catch {
            alerItem = AlertContext.invalidUserData
        }
    }
    
    var isValidForm: Bool {
        guard !user.firstName.isEmpty && !user.lastName.isEmpty && !user.email.isEmpty else {
            alerItem = AlertContext.invalidForm
            return false
        }
        guard user.email.isValidEmail else {
            alerItem = AlertContext.invalidEmail
            return false
        }
        return true
    }
}
