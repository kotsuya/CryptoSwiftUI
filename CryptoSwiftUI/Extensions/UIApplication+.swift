//
//  UIApplication+.swift
//  CryptoSwiftUI
//
//  Created by Yoo on 2023/11/26.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    // Keyboard hide
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
