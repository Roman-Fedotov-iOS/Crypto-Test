//
//  CellView.swift
//  Crypto-Test
//
//  Created by Roman Fedotov on 27.05.2022.
//

import SwiftUI

struct CellView: View {
    
    let cell: Cell
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image("coinIcon")
                    .padding(.leading, 20)
                    .padding(.top, 20)
                VStack(alignment: .leading, spacing: 5) {
                    Text(cell.title)
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                        .font(.system(size: 16))
                    Text(cell.ticker)
                        .foregroundColor(Color(UIColor.ColorKey.textColor.rawValue))
                        .fontWeight(.semibold)
                        .font(.system(size: 12))
                }
                .padding(.top, 20)
            }
            
            cell.graph.frame(width: 190, height: 50)
            
            HStack {
                Text(cell.cost)
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .font(.system(size: 14))
                    .padding(.leading, 20)
                
                Spacer()
                
                Text(cell.delta)
                    .foregroundColor( cell.isIncreased ? .green : .red)
                    .fontWeight(.semibold)
                    .font(.system(size: 10))
                    .padding(.trailing, 20)
            }
            
            Spacer()
        }
        .frame(width: 200, height: 155)
        .background(Color(UIColor.ColorKey.chartCellBackground.rawValue))
        .cornerRadius(18)
    }
}

struct CellView_Previews: PreviewProvider {
    static var previews: some View {
        CellView(cell: Cell(id: 4, title: "Bitcoin", ticker: "BTC", cost: "$323,20", delta: "0,27%", isIncreased: false, graph: LineGraph(data: sampleData)))
    }
}
