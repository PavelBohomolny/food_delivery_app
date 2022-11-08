//
//  User.swift
//  Food Delivery
//
//  Created by Pavel Bohomolnyi on 04/11/2022.
//

import Foundation

struct User: Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthdate = Date()
    var extraNapkins = true
    var frequentRefills = false
}
