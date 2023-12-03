//
//  CoinError.swift
//  CryptoSwiftUI
//
//  Created by Yoo on 2023/11/26.
//

import Foundation

enum CoinError: Error, LocalizedError {
    case invalidURL
    case serverError(url: URL)
    case invalidData
    case unknown(Error)
    
    var errorDescription: String? {
        switch self {
        case .invalidURL:
            return ""
        case .serverError(let url):
            return "[🔥] Bad response from URL. \(url)"
        case .invalidData:
            return ""
        case .unknown(let error):
            return "[⚠️] Unknown error occured. \(error.localizedDescription)"
        }
    }
}
