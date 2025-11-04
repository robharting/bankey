//
//  LocalState.swift
//  Bankey
//
//  Created by Harting, R.P.G. (Rob) on 24/10/2025.
//

import Foundation

public class LocalState {
    
    private enum Keys: String {
        case hasOnboarded
    }
    
    // computed property
    public static var hasOnboarded: Bool {
        get {
            return UserDefaults.standard.bool(forKey: Keys.hasOnboarded.rawValue)
        } set(newValue) {
            UserDefaults.standard.set(newValue, forKey: Keys.hasOnboarded.rawValue)
            // as of iOS 12 not needed anymore
            UserDefaults.standard.synchronize()
        }
    }
}
