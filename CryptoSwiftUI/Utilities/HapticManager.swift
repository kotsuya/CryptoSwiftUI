//
//  HapticManager.swift
//  CryptoSwiftUI
//
//  Created by Yoo on 2023/11/30.
//

import Foundation
import SwiftUI

class HapticManager {
    static let generator = UINotificationFeedbackGenerator()
    
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        generator.notificationOccurred(type)
        
    }
}
