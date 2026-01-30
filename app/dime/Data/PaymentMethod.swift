//
//  PaymentMethod.swift
//  dime
//
//  Created on 30/1/26.
//

import Foundation
import SwiftUI

/// Represents the payment method used for a transaction
enum PaymentMethod: Int16, CaseIterable, Identifiable {
    case cash = 0
    case bankAccount = 1
    case creditCard = 2
    
    var id: Int16 { rawValue }
    
    /// Display name for the payment method
    var name: String {
        switch self {
        case .cash:
            return String(localized: "Cash")
        case .bankAccount:
            return String(localized: "Bank Account")
        case .creditCard:
            return String(localized: "Credit Card")
        }
    }
    
    /// Short name for compact UI display
    var shortName: String {
        switch self {
        case .cash:
            return String(localized: "Cash")
        case .bankAccount:
            return String(localized: "Bank")
        case .creditCard:
            return String(localized: "Card")
        }
    }
    
    /// SF Symbol icon name
    var icon: String {
        switch self {
        case .cash:
            return "banknote"
        case .bankAccount:
            return "building.columns"
        case .creditCard:
            return "creditcard"
        }
    }
    
    /// Color associated with the payment method
    var color: Color {
        switch self {
        case .cash:
            return Color.green
        case .bankAccount:
            return Color.blue
        case .creditCard:
            return Color.orange
        }
    }
}
