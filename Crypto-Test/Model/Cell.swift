//
//  Cell.swift
//  Crypto-Test
//
//  Created by Roman Fedotov on 30.05.2022.
//

import SwiftUI

struct Cell {
    var id: Int
    let title, ticker: String
    var cost, delta: String
    var isIncreased: Bool
    let graph: LineGraph
}
