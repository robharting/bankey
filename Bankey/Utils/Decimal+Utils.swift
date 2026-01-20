//
//  File.swift
//  Bankey
//
//  Created by Harting, R.P.G. (Rob) on 05/12/2025.
//

import Foundation

extension Decimal {
    var doubleValue: Double {
        return NSDecimalNumber(decimal: self).doubleValue
    }
}
