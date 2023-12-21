//
//  Double+Extension.swift
//  SwiftUIMVVM
//
//  Created by Ravikanth on 21/12/2023.
//

import Foundation

extension Double {
    func toOneDecimalString() -> String {
        return String(format: "%.1f", self)
    }
    
    func currencyFormat() -> String {
        let formatter = NumberFormatter()
        formatter.maximumFractionDigits = 2
        formatter.minimumFractionDigits = 2
        formatter.numberStyle = .currency
        return formatter.string(from: NSNumber(value: self)) ?? ""
    }
}
