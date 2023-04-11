//
//  UIApplication.swift
//  CryptoTracker
//
//  Created by Ahmed Kasem on 11/04/2023.
//

import SwiftUI

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
