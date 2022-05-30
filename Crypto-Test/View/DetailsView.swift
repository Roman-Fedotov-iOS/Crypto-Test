//
//  DetailsView.swift
//  Crypto-Test
//
//  Created by Roman Fedotov on 29.05.2022.
//

import SwiftUI

struct DetailsView: View {
    
    let coin: Coin
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    var body: some View {
        Color.black
            .ignoresSafeArea()
            .overlay(
                ZStack {
                    VStack(alignment: .leading) {
                        VStack {
                            Text(coin.price)
                                .foregroundColor(.white)
                                .fontWeight(.semibold)
                                .font(.system(size: 32))
                            
                            Spacer()
                                .frame(height: 16)
                            
                            Text(coin.delta)
                                .foregroundColor( coin.isIncreased ? .green : .red)
                                .fontWeight(.semibold)
                                .font(.system(size: 16))
                            
                            Spacer()
                                .frame(height: 26)
                            
                            HStack {
                                VStack {
                                    Text("24h Low")
                                        .foregroundColor(Color(UIColor.ColorKey.textColor.rawValue))
                                        .fontWeight(.semibold)
                                        .font(.system(size: 12))
                                    Text("$ 45 848")
                                        .foregroundColor(.white)
                                        .fontWeight(.semibold)
                                        .font(.system(size: 16))
                                }
                                Spacer()
                                VStack {
                                    Text("24h High")
                                        .foregroundColor(Color(UIColor.ColorKey.textColor.rawValue))
                                        .fontWeight(.semibold)
                                        .font(.system(size: 12))
                                    Text("$ 49 300")
                                        .foregroundColor(.white)
                                        .fontWeight(.semibold)
                                        .font(.system(size: 16))
                                }
                                Spacer()
                                VStack {
                                    Text("Volume \(coin.ticker)")
                                        .foregroundColor(Color(UIColor.ColorKey.textColor.rawValue))
                                        .fontWeight(.semibold)
                                        .font(.system(size: 12))
                                    Text("0.0387")
                                        .foregroundColor(.white)
                                        .fontWeight(.semibold)
                                        .font(.system(size: 16))
                                }
                            }
                            Spacer()
                                .frame(height: 38)
                        }
                        .padding(.horizontal, 20)
                        .background(Color(UIColor.ColorKey.descriptionBackground.rawValue))
                        .edgesIgnoringSafeArea([.leading, .trailing])
                        .cornerRadius(30, corners: [.bottomLeft, .bottomRight])
                        
                        Spacer()
                            .frame(height: 42)
                        
                        VStack(alignment: .leading, spacing: 6) {
                            HStack {
                                Text("5")
                                    .foregroundColor(.white)
                                    .fontWeight(.semibold)
                                    .font(.system(size: 20))
                                Spacer()
                                Text(coin.ticker)
                                    .foregroundColor(.white)
                                    .fontWeight(.semibold)
                                    .font(.system(size: 16))
                            }
                            Rectangle()
                                .frame(height: 1)
                                .overlay(
                                    LinearGradient(gradient: Gradient(colors: [Color(UIColor.ColorKey.gradientLight.rawValue), Color(UIColor.ColorKey.gradientDark.rawValue)]), startPoint: .leading, endPoint: .trailing)
                                )
                            Text("Available: 5 \(coin.ticker)")
                                .foregroundColor(Color(UIColor.ColorKey.textColor.rawValue))
                                .fontWeight(.semibold)
                                .font(.system(size: 12))
                        }
                        .padding(.horizontal, 20)
                        
                        Spacer()
                            .frame(height: 32)
                        
                        VStack(alignment: .leading, spacing: 6) {
                            HStack {
                                Text("0")
                                    .foregroundColor(.white)
                                    .fontWeight(.semibold)
                                    .font(.system(size: 20))
                                Spacer()
                                Text("USD")
                                    .foregroundColor(.white)
                                    .fontWeight(.semibold)
                                    .font(.system(size: 16))
                            }
                            Rectangle()
                                .frame(height: 1)
                                .overlay(
                                    LinearGradient(gradient: Gradient(colors: [Color(UIColor.ColorKey.gradientLight.rawValue), Color(UIColor.ColorKey.gradientDark.rawValue)]), startPoint: .leading, endPoint: .trailing)
                                )
                            Text("Available: 0 USD")
                                .foregroundColor(Color(UIColor.ColorKey.textColor.rawValue))
                                .fontWeight(.semibold)
                                .font(.system(size: 12))
                        }
                        .padding(.horizontal, 20)
                        
                        Spacer()
                            .frame(height: 20)
                        
                        Group {
                            HStack(spacing: 10) {
                                Button(action: {
                                    print("bought")
                                }, label: {
                                    Text("Buy \(coin.ticker)")
                                        .fontWeight(.semibold)
                                        .padding()
                                        .frame(width: 162, height: 70)
                                        .background(Color(UIColor.ColorKey.descriptionBackground.rawValue))
                                        .cornerRadius(12)
                                        .font(.system(size: 16))
                                        .foregroundColor(.white)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 12)
                                                .stroke(LinearGradient(gradient: Gradient(colors: [Color(UIColor.ColorKey.gradientLight.rawValue), Color(UIColor.ColorKey.gradientDark.rawValue)]), startPoint: .leading, endPoint: .trailing))
                                    )
                                })
                                Button(action: {
                                    print("sold")
                                }, label: {
                                    Text("Sell \(coin.ticker)")
                                        .fontWeight(.semibold)
                                        .padding()
                                        .frame(width: 162, height: 70)
                                        .background(Color(UIColor.ColorKey.descriptionBackground.rawValue))
                                        .cornerRadius(12)
                                        .font(.system(size: 16))
                                        .foregroundColor(.white)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 12)
                                                .stroke(LinearGradient(gradient: Gradient(colors: [Color(UIColor.ColorKey.gradientLight.rawValue), Color(UIColor.ColorKey.gradientDark.rawValue)]), startPoint: .leading, endPoint: .trailing))
                                    )
                                })
                            }
                            .frame(width: UIScreen.main.bounds.width - 40)
                            .padding(.leading, 20)
                            
                            Spacer()
                                .frame(height: 40)
                        }
                        
                        Group {
                            HStack(spacing: 8) {
                                
                                Image("moneyIcon")
                                
                                Text("About \(coin.ticker)")
                                    .foregroundColor(.white)
                                    .font(.system(size: 20))
                                    .fontWeight(.semibold)
                            }
                            .padding(.leading, 20)
                            
                            GeometryReader { geometry in
                                ScrollView {
                                    Text("Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem, quia voluptas sit, aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos, qui ratione voluptatem sequi nesciunt, neque porro quisquam est, qui dolorem ipsum, quia dolor sit, amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt, ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit, qui in ea voluptate velit esse, quam nihil molestiae consequatur, vel illum, qui dolorem eum fugiat, quo voluptas nulla pariatur? At vero eos et accusamus et iusto odio dignissimos ducimus, qui blanditiis praesentium voluptatum deleniti atque corrupti, quos dolores et quas molestias excepturi sint, obcaecati cupiditate non provident, similique sunt in culpa, qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio, cumque nihil impedit, quo minus id, quod maxime placeat, facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet, ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.")
                                        .foregroundColor(.white)
                                        .fontWeight(.semibold)
                                        .lineLimit(7)
                                        .font(.system(size: 14))
                                        .overlay (
                                                    getGradientOverlay()
                                                )
                                }
                                .padding(.horizontal, 20)
                            }
                            VStack {
                                HStack {
                                    Text("Rank")
                                        .foregroundColor(.white)
                                        .fontWeight(.semibold)
                                        .font(.system(size: 16))
                                    Spacer()
                                    Text("№1")
                                        .foregroundColor(Color(UIColor.ColorKey.textColor.rawValue))
                                        .font(.system(size: 14))
                                }
                                .padding()
                                .background(Color(UIColor.ColorKey.descriptionBackground.rawValue))
                                .cornerRadius(12)
                                
                                Spacer()
                                    .frame(height: 12)
                                HStack {
                                    Text("Launch Date ")
                                        .foregroundColor(.white)
                                        .fontWeight(.semibold)
                                        .font(.system(size: 16))
                                    Spacer()
                                    Text("January 3, 2009")
                                        .foregroundColor(Color(UIColor.ColorKey.textColor.rawValue))
                                        .font(.system(size: 14))
                                }
                                .padding()
                                .background(Color(UIColor.ColorKey.descriptionBackground.rawValue))
                                .cornerRadius(12)
                            }

                        }
                        
                        Spacer()
                    }
                }
                    .specialNavBar()
            )
            .navigationTitle(Text(coin.ticker) + Text("/") + Text("USD"))
            .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: Button(action : {
            self.mode.wrappedValue.dismiss()
        }){
            Image("backButton")
        })
    }
}


struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(coin: Coin(name: "Cordano", ticker: "ADA", price: "$2,836,137.20", delta: "+4.11%", image: "cordano", isIncreased: true))
    }
}

@ViewBuilder private func getGradientOverlay() -> some View {
    LinearGradient(gradient:
                    Gradient(stops: [
                        .init(color: Color.black.opacity(0.98), location: 0),
                        .init(color: Color.black.opacity(0), location: 1.0)
                    ]),
                   startPoint: .bottom,
                   endPoint: .top
    )
}
