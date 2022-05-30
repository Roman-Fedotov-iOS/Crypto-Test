//
//  NewsCellView.swift
//  Crypto-Test
//
//  Created by Roman Fedotov on 27.05.2022.
//

import SwiftUI

struct NewsCellView: View {
    
    let newsCell: NewsCell
    
    var body: some View {
        HStack {
            Image(newsCell.image)
                .padding(.leading, 0)
            
            VStack(alignment: .leading, spacing: 10) {
                Text(newsCell.title)                        .foregroundColor(Color(UIColor.ColorKey.textColor.rawValue))
                    .fontWeight(.semibold)
                    .font(.system(size: 12)) + Text(" • ")                        .foregroundColor(Color(UIColor.ColorKey.textColor.rawValue))
                    .fontWeight(.semibold)
                    .font(.system(size: 12)) + Text(newsCell.time)
                    .foregroundColor(Color(UIColor.ColorKey.textColor.rawValue))
                    .fontWeight(.semibold)
                    .font(.system(size: 12))
                Text(newsCell.description)
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .font(.system(size: 14))
            }
            .frame(height: 80, alignment: .top)
        }
        .frame(width: UIScreen.main.bounds.width - 40)
    }
}

struct NewsCellView_Previews: PreviewProvider {
    static var previews: some View {
        NewsCellView(newsCell: NewsCell(id: 1, title: "Bitcoin news", description: "Bitcoin Eyes Key Upside Break, Outperforms Ethereum, DOGE Rallies", image: "news2", time: "6 min ago"))
    }
}
