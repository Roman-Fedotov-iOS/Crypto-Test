//
//  Cells.swift
//  Crypto-Test
//
//  Created by Roman Fedotov on 30.05.2022.
//

import SwiftUI

let cells: [Cell] = [
    Cell(id: 0, title: "Bitcoin", ticker: "BTC", cost: "$323,20", delta: "0,27%", isIncreased: false, graph: LineGraph(data: sampleData)),
    Cell(id: 1, title: "Binance", ticker: "BNB", cost: "$684,73", delta: "12,90%", isIncreased: true, graph: LineGraph(data: sampleData)),
    Cell(id: 2, title: "Bitcoin", ticker: "BTC", cost: "$323,20", delta: "0,27%", isIncreased: false, graph: LineGraph(data: sampleData)),
    Cell(id: 3, title: "Binance", ticker: "BNB", cost: "$684,73", delta: "12,90%", isIncreased: true, graph: LineGraph(data: sampleData)),
    Cell(id: 4, title: "Bitcoin", ticker: "BTC", cost: "$323,20", delta: "0,27%", isIncreased: false, graph: LineGraph(data: sampleData))
]

let newsCells: [NewsCell] = [
NewsCell(id: 0, title: "Altcoin news", description: "Six XRP Token Holders to Speak in Ripple-SEC Case as Circle Gets Subpoena", image: "news1", time: "6 min ago"),
NewsCell(id: 1, title: "Bitcoin news", description: "Bitcoin Eyes Key Upside Break, Outperforms Ethereum, DOGE Rallies", image: "news2", time: "6 min ago")
]
