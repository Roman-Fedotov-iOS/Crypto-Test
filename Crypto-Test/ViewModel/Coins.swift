//
//  Coins.swift
//  Crypto-Test
//
//  Created by Roman Fedotov on 30.05.2022.
//

import SwiftUI

let coins: [Coin] = [
Coin(name: "Ethereum", ticker: "ETH", price: "$2678.95", delta: "+4.95%", image: "ethereum", isIncreased: true),
Coin(name: "Ethereum 2", ticker: "ETH2", price: "$2,383.65", delta: "+4.91%", image: "ethereum2", isIncreased: true),
Coin(name: "Tether", ticker: "USDT", price: "$2.00", delta: "-0.05%", image: "tether", isIncreased: false),
Coin(name: "Binance Coin", ticker: "BNB", price: "$352.50", delta: "-0.27%", image: "binance", isIncreased: false),
Coin(name: "Cordano", ticker: "ADA", price: "$2,836,137.20", delta: "+4.11%", image: "cordano", isIncreased: true)
]
