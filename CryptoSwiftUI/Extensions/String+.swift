//
//  String+.swift
//  CryptoSwiftUI
//
//  Created by Yoo on 2023/12/03.
//

import Foundation

extension String {
    
    var removingHTMLOccurances: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
}
