//
//  Coin.swift
//  Crypto-Test
//
//  Created by Roman Fedotov on 30.05.2022.
//

import SwiftUI

struct Coin: Identifiable {
    var id = UUID()
    var name: String
    var ticker: String
    var price: String
    var delta: String
    var image: String
    var isIncreased: Bool
}
