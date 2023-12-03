//
//  MarketDataModel.swift
//  CryptoSwiftUI
//
//  Created by Yoo on 2023/11/26.
//

import Foundation

/*
 ULR: https://api.coingecko.com/api/v3/global
 
 JSON Response:
 {
   "data": {
     "active_cryptocurrencies": 11123,
     "upcoming_icos": 0,
     "ongoing_icos": 49,
     "ended_icos": 3376,
     "markets": 935,
     "total_market_cap": {
       "btc": 39677475.39800344,
       "eth": 716773803.5836813,
       "ltc": 21119088156.63576,
       "bch": 6537103301.672734,
       "bnb": 6412068554.283937,
       "eos": 2135089660679.863,
       "xrp": 2411163600963.0835,
       "xlm": 12441376825314.65,
       "link": 98784479237.11975,
       "dot": 279854629027.27936,
       "yfi": 171687914.3300495,
       "usd": 1500729781202.163,
       "aed": 5511730267421.201,
       "ars": 534044905106949.94,
       "aud": 2280051252931.541,
       "bdt": 164908257782527.22,
       "bhd": 563810672229.622,
       "bmd": 1500729781202.163,
       "brl": 7357177679365.471,
       "cad": 2047820822939.4128,
       "chf": 1324824741358.1145,
       "clp": 1302656193643312,
       "cny": 10643025535307.63,
       "czk": 33461621858486.547,
       "dkk": 10226422948045.92,
       "eur": 1370572988008.283,
       "gbp": 1190961145604.6624,
       "hkd": 11699764410741.123,
       "huf": 521051131940177.4,
       "idr": 23310235399500720,
       "ils": 5586297028059.761,
       "inr": 125034277195216.22,
       "jpy": 224306562085251.56,
       "krw": 1960874263199945.2,
       "kwd": 461162255925.1754,
       "lkr": 491517638768665.25,
       "mmk": 3141108495475992,
       "mxn": 25687916628348.38,
       "myr": 7030168660041.533,
       "ngn": 1203133674413266.5,
       "nok": 16039034529300.316,
       "nzd": 2469931088498.146,
       "php": 83743343566008.47,
       "pkr": 421804772502279.9,
       "pln": 5994740147501.094,
       "rub": 133985145861350.42,
       "sar": 5628260434201.742,
       "sek": 15668519353619.312,
       "sgd": 2011578198723.381,
       "thb": 53020624092515.484,
       "try": 43313462653144.29,
       "twd": 47514605602641.91,
       "uah": 53989681329752.5,
       "vef": 150268072991.77283,
       "vnd": 36429914647412460,
       "zar": 28197369435634.496,
       "xdr": 1123509344858.7488,
       "xag": 61679618824.96382,
       "xau": 749464452.7323608,
       "bits": 39677475398003.44,
       "sats": 3967747539800343.5
     },
     "total_volume": {
       "btc": 978391.29699517,
       "eth": 17674643.97131698,
       "ltc": 520767308.0421326,
       "bch": 161195865.25499633,
       "bnb": 158112682.48088908,
       "eos": 52648338165.655174,
       "xrp": 59455937131.83987,
       "xlm": 306787029326.4115,
       "link": 2435887711.965198,
       "dot": 6900825486.439087,
       "yfi": 4233584.911711025,
       "usd": 37005906810.88411,
       "aed": 135911593944.33447,
       "ars": 13168803763848.936,
       "aud": 56222889188.24219,
       "bdt": 4066408021140.868,
       "bhd": 13902786135.687862,
       "bmd": 37005906810.88411,
       "brl": 181417757549.67792,
       "cad": 50496410138.79194,
       "chf": 32668333455.859962,
       "clp": 32121687936365.133,
       "cny": 262442190512.10922,
       "czk": 825117003571.6027,
       "dkk": 252169350781.40808,
       "eur": 33796421519.082996,
       "gbp": 29367443574.2359,
       "hkd": 288499899792.993,
       "huf": 12848395409890.525,
       "idr": 574797948130738.5,
       "ils": 137750306436.04608,
       "inr": 3083171179788.242,
       "jpy": 5531087499941.089,
       "krw": 48352429038697.9,
       "kwd": 11371619115.730207,
       "lkr": 12120140590272.445,
       "mmk": 77455361866242.81,
       "mxn": 633428256586.5631,
       "myr": 173354170455.5866,
       "ngn": 29667601185810.164,
       "nok": 395500258982.25604,
       "nzd": 60905061547.48933,
       "php": 2064994249366.5322,
       "pkr": 10401118375289.188,
       "pln": 147821945051.41693,
       "rub": 3303887138040.292,
       "sar": 138785065602.29218,
       "sek": 386363870649.7168,
       "sgd": 49602717489.309105,
       "thb": 1307414765002.4104,
       "try": 1068049680013.0112,
       "twd": 1171644015539.4072,
       "uah": 1331310367171.9624,
       "vef": 3705401448.9738317,
       "vnd": 898310970740309.6,
       "zar": 695307868689.9174,
       "xdr": 27704176086.713875,
       "xag": 1520933518.4506395,
       "xau": 18480749.861355536,
       "bits": 978391296995.1699,
       "sats": 97839129699517
     },
     "market_cap_percentage": {
       "btc": 49.28087165325085,
       "eth": 16.776634771999625,
       "usdt": 5.9172372251182,
       "bnb": 2.3995198244419,
       "xrp": 2.231230783406656,
       "sol": 1.6492352652988842,
       "usdc": 1.6469519561890795,
       "steth": 1.2835878761496433,
       "ada": 0.9199679980347066,
       "doge": 0.7398477806977454
     },
     "market_cap_change_percentage_24h_usd": 0.14649265495730696,
     "updated_at": 1700988171
   }
 }

 */

// MARK: - Welcome
struct GlobalData: Codable {
    let data: MarketDataModel?
}

// MARK: - DataClass
struct MarketDataModel: Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double
    
    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String {
        if let item = totalMarketCap.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var volume: String {
        if let item = totalVolume.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var btcDominance: String {
        if let item = marketCapPercentage.first(where: { $0.key == "btc" }) {
            return item.value.asPercentString()
        }
        return ""
    }
}
