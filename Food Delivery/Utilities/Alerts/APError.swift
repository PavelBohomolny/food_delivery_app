//
//  APError.swift
//  Food Delivery
//
//  Created by Pavel Bohomolnyi on 02/11/2022.
//

import Foundation

enum APError: Error {
    case invalidURL
    case invalidResponse
    case invalidData
    case unableToComplete
}
