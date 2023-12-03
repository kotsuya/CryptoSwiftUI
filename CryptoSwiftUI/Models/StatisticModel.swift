//
//  StatisticModel.swift
//  CryptoSwiftUI
//
//  Created by Yoo on 2023/11/26.
//

import Foundation

struct StatisticModel: Identifiable {
    let id = UUID().uuidString
    let title: String
    let value: String
    let percentageChange: Double?
    
    init(title: String, value: String, percentageChange: Double? = nil) {
        self.title = title
        self.value = value
        self.percentageChange = percentageChange
    }
}

extension StatisticModel {
    static let MOCK_STATISTIC = StatisticModel(title: "Market Cap", value: "$12.5B", percentageChange: 25.34)
    static let MOCK_STATISTIC2 = StatisticModel(title: "Total Value", value: "$1.52T")
    static let MOCK_STATISTIC3 = StatisticModel(title: "Portfolio Value", value: "$50.4K", percentageChange: -12.11)
}
