//
//  CoinModel.swift
//  CryptoSwiftUI
//
//  Created by Yoo on 2023/11/25.
//

import Foundation
// app.quicktype.io
// CoinGecko API info
/*
 URL:
 https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=false&price_change_percentage=7d&locale=us
 
 [
 {
     "id": "bitcoin",
     "symbol": "btc",
     "name": "ビットコイン",
     "image": "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1696501400",
     "current_price": 5655197,
     "market_cap": 110579948401447,
     "market_cap_rank": 1,
     "fully_diluted_valuation": 118767405739747,
     "total_volume": 2973110459021,
     "high_24h": 5733763,
     "low_24h": 5580990,
     "price_change_24h": 74207,
     "price_change_percentage_24h": 1.32964,
     "market_cap_change_24h": 1504371174799,
     "market_cap_change_percentage_24h": 1.3792,
     "circulating_supply": 19552325,
     "total_supply": 21000000,
     "max_supply": 21000000,
     "ath": 7828814,
     "ath_change_percentage": -27.76601,
     "ath_date": "2021-11-10T14:24:11.849Z",
     "atl": 6641.83,
     "atl_change_percentage": 85043.14415,
     "atl_date": "2013-07-05T00:00:00.000Z",
     "roi": null,
     "last_updated": "2023-11-25T06:32:17.461Z",
     "sparkline_in_7d": {
       "price": [
         36348.29105842537,
         36283.87120142703,
         ...
       ]
     },
     "price_change_percentage_7d_in_currency": 4.044926597819903
   },
 */

struct CoinModel: Identifiable, Codable {
    let id, symbol, name: String
    let image: String
    let currentPrice: Double
    let marketCap, marketCapRank, fullyDilutedValuation: Double?
    let totalVolume, high24H, low24H, priceChange24H: Double?
    let priceChangePercentage24H: Double?
    let marketCapChange24H: Double?
    let marketCapChangePercentage24H: Double?
    let circulatingSupply, totalSupply, maxSupply, ath: Double?
    let athChangePercentage: Double?
    let athDate: String?
    let atl, atlChangePercentage: Double?
    let atlDate: String?
    let lastUpdated: String?
    let sparklineIn7D: SparklineIn7D?
    let priceChangePercentage7DInCurrency: Double?
    let currentHoldings: Double?
    
    enum CodingKeys: String, CodingKey {
        case id, symbol, name
        case image
        case currentPrice = "current_price"
        case marketCap = "market_cap"
        case marketCapRank = "market_cap_rank"
        case fullyDilutedValuation = "fully_diluted_valuation"
        case totalVolume = "total_volume"
        case high24H = "high_24h"
        case low24H = "low_24h"
        case priceChange24H = "price_change_24h"
        case priceChangePercentage24H = "price_change_percentage_24h"
        case marketCapChange24H = "market_cap_change_24h"
        case marketCapChangePercentage24H = "market_cap_change_percentage_24h"
        case circulatingSupply = "circulating_supply"
        case totalSupply = "total_supply"
        case maxSupply = "max_supply"
        case ath
        case athChangePercentage = "ath_change_percentage"
        case athDate = "ath_date"
        case atl
        case atlChangePercentage = "atl_change_percentage"
        case atlDate = "atl_date"
        case lastUpdated = "lastUpdated"
        case sparklineIn7D = "sparkline_in_7d"
        case priceChangePercentage7DInCurrency = "price_change_percentage_7d_in_currency"
        case currentHoldings = "current_holdings"
    }
    
    func updateHoldings(amount: Double) -> CoinModel {
        return CoinModel(id: id, symbol: symbol, name: name, image: image, currentPrice: currentPrice, marketCap: marketCap, marketCapRank: marketCapRank, fullyDilutedValuation: fullyDilutedValuation, totalVolume: totalVolume, high24H: high24H, low24H: low24H, priceChange24H: priceChange24H, priceChangePercentage24H: priceChangePercentage24H, marketCapChange24H: marketCapChange24H, marketCapChangePercentage24H: marketCapChangePercentage24H, circulatingSupply: circulatingSupply, totalSupply: totalSupply, maxSupply: maxSupply, ath: ath, athChangePercentage: athChangePercentage, athDate: athDate, atl: atl, atlChangePercentage: atlChangePercentage, atlDate: atlDate, lastUpdated: lastUpdated, sparklineIn7D: sparklineIn7D, priceChangePercentage7DInCurrency: priceChangePercentage7DInCurrency, currentHoldings: amount)
    }
    
    var currentHoldingsValue: Double {
        return (currentHoldings ?? 0) * currentPrice
    }
    
    var rank: Int {
        return Int(marketCapRank ?? 0)
    }
}

struct SparklineIn7D: Codable {
    let price: [Double]?
}

extension CoinModel {
    static let MOCK_COIN = CoinModel(
        id: "bitcoin",
        symbol: "btc",
        name: "ビットコイン",
        image: "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1696501400",
        currentPrice: 5656454,
        marketCap: 110621026237970,
        marketCapRank: 1,
        fullyDilutedValuation: 118812284602110,
        totalVolume: 3316757094896,
        high24H: 5733763,
        low24H: 5569398,
        priceChange24H: 70452,
        priceChangePercentage24H: 1.26122,
        marketCapChange24H: 1338424665606,
        marketCapChangePercentage24H: 1.22474,
        circulatingSupply: 19552200,
        totalSupply: 21000000,
        maxSupply: 21000000,
        ath: 7828814,
        athChangePercentage: -27.74057,
        athDate: "2021-11-10T14:24:11.849Z",
        atl: 6641.83,
        atlChangePercentage: 85073.12764,
        atlDate: "2013-07-05T00:00:00.000Z",
        lastUpdated: "2023-11-25T03:34:29.323Z",
        sparklineIn7D: 
            SparklineIn7D(price: [
                37793.64431403557,
                37788.10244930057,
                37812.43724553806,
                37792.90092884676,
                37777.892099231256,
                37728.290528272344,
                37686.93466932706,
                37583.05840249476,
                37482.57695014037,
                37390.36318955521,
                37419.91048390201,
                37184.1521968419,
                37277.07278556451,
                37229.85088047136,
                37321.06241885232,
                37610.606849353484,
                37651.86578364459,
                37646.91333313132,
                37479.4639007697,
                37514.914425042676,
                37493.67370201604,
                37330.133345788345,
                37318.30584731139,
                37381.08565581846,
                37344.83463883223,
                37261.18076239171,
                37286.01760264288,
                37345.42222276443,
                37456.8208086032,
                37105.72526483829,
                37153.393982179616,
                37070.88096186102,
                36852.04066154097,
                36770.39889445873,
                36822.44074613723,
                37058.31561754113,
                36918.99837698293,
                36956.580633701255,
                36886.50705537329,
                36821.20749959725,
                37010.074475659945,
                37069.97426871866,
                37275.70298263105,
                37265.896934563476,
                37224.82465955006,
                37186.24705220994,
                37133.160745663976,
                37005.502651825765,
                36930.718676559816,
                37071.64933422501,
                37116.67138301842,
                36950.07645028676,
                37101.48065349674,
                37089.56810257802,
                37226.8290786621,
                37198.39977907306,
                37433.766836494455,
                37394.07643077547,
                37498.44306463815,
                37913.65188183311,
                38170.41938875429,
                38028.624156199294,
                38261.22764442761,
                38247.067863730925,
                37986.86179095247,
                37823.821220234415,
                37802.23604377473,
                37896.495876000896,
                37963.24457231813,
                37919.148111568866,
                37927.545827586,
                37918.65956045931,
                38016.71960938207,
                38189.71043871588,
                38180.80133415089,
                38329.03761090173,
                38308.56019539666,
                37952.806530482,
                38165.99878207116,
                38247.80903444624,
                38154.816272782555,
                37847.408905601485,
                37853.04318282559,
                37776.59552224862,
                37833.07449689043,
                37855.02048653006,
                37830.37950137519,
                37686.82572817117,
                37720.56805996384,
                37798.33697303296,
                37810.34641654128,
                37846.54624031292,
                37707.41683816759,
                37900.831548547896,
                38049.71405708279,
                37983.48982564399,
                37883.492250512594,
                37890.29622632359,
                37789.336843645084,
                37666.695097959906,
                37702.55758118839,
                37699.89617454001,
                37870.39199235945,
                37865.352690164786,
                37779.33930176717,
                37714.451780373376,
                37550.7712513322,
                37674.89543904984,
                37746.35090844887,
                37730.6450303125,
                37791.6209042337,
                37730.058074457644,
                37758.36256606494,
                37766.35189696482,
                37711.81837585267,
                37686.883493873145,
                37952.97688055694,
                37993.781301693336,
                38056.21434006624,
                38178.60076031328,
                38126.257559346166,
                38201.09522290106,
                38274.23844638254,
                38324.727041247694,
                38716.51256230179,
                38609.71030296244,
                38588.98744301308,
                38335.644889300376,
                38383.450916895476,
                38349.59336714379,
                38425.64514173744,
                38865.49348613761,
                38788.45449703663,
                38786.97239941792,
                38765.03228493339,
                38789.652274272914,
                38879.988983613905,
                38721.55637643629,
                38688.25874179069,
                38745.01599011696,
                38771.861009602646,
                38733.905087854655,
                38791.576782986456,
                38778.344824643966,
                38821.27839554136,
                38781.465775129866,
                38759.838774804266,
                38722.70728685683,
                38801.858119236305,
                38766.54151747684,
                38764.9920600245,
                38783.432560123816,
                38849.23463806226,
                38771.45031058555,
                38818.73975587071,
                38740.144970710855,
                38809.024569185174,
                38912.29920005041,
                39345.44311863636,
                39515.732720786174,
                39680.220004704446,
                39375.159354813426,
                39481.666416062864,
                39519.34785575302,
                39511.22892311471,
                39371.46506231928,
                39389.70384842287,
                39370.02891971165
            ]),
        priceChangePercentage7DInCurrency: 3.8414819161512312,
        currentHoldings: 1.5
        )
}
