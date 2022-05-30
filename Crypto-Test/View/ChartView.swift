//
//  ChartView.swift
//  Crypto-Test
//
//  Created by Roman Fedotov on 27.05.2022.
//

import SwiftUI

struct ChartView: View {
    
    init() {
        UITableView.appearance().backgroundColor = .black
    }
    
    var body: some View {
        NavigationView {
            List(coins) { coin in
                NavigationLink(destination: DetailsView(coin: coin)) {
                    ZStack {
                        HStack {
                            Image(coin.image)
                                .padding(.trailing, 10)
                                .frame(height: 46)
                            VStack(alignment: .leading, spacing: 7) {
                                Text(coin.name)
                                    .foregroundColor(.white)
                                    .fontWeight(.semibold)
                                    .font(.system(size: 16))
                                Text(coin.ticker)
                                    .foregroundColor(Color(UIColor.ColorKey.textColor.rawValue))
                                    .fontWeight(.semibold)
                                    .font(.system(size: 16))
                            }
                            .frame(height: 46)
                            
                            Spacer()
                            
                            VStack(alignment: .trailing, spacing: 7) {
                                Text(coin.price)
                                    .foregroundColor(Color(UIColor.ColorKey.textColor.rawValue))
                                    .fontWeight(.semibold)
                                    .font(.system(size: 16))
                                Text(coin.delta)
                                    .foregroundColor( coin.isIncreased ? .green : .red)
                                    .fontWeight(.semibold)
                                    .font(.system(size: 16))
                            }
                            .frame(height: 46)
                        }
                    }
                    .listRowBackground(Color.black)
                }
                .listRowBackground(Color.black)
            }
            .normalNavBar()
            .navigationBarHidden(true)
            .environment(\.defaultMinListRowHeight, 75)
            .hasScrollEnabled(false)
        }
        .hasScrollEnabled(false)
    }
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartView()
    }
}
