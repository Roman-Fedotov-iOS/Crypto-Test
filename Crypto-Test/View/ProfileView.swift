//
//  ProfileView.swift
//  Crypto-Test
//
//  Created by Roman Fedotov on 27.05.2022.
//

import SwiftUI
import Kingfisher

struct ProfileView: View {
    
    var body: some View {
        Color.black
            .ignoresSafeArea()
            .overlay(
                ScrollView {
                    Group {
                        VStack(alignment: .leading, spacing: 0) {
                            HStack(spacing: 0) {
                                Text("Welcome back,")
                                    .foregroundColor(Color(UIColor.ColorKey.textColor.rawValue))
                                    .font(.system(size: 16))
                                    .fontWeight(.semibold)
                                
                                Spacer()
                            }
                            
                            Spacer()
                                .frame(height: 10)
                            
                            HStack(spacing: 10) {
                                Text("Matthew")
                                    .foregroundColor(.white)
                                    .font(.title)
                                    .font(.system(size: 32))
                                    .fontWeight(.semibold)
                                
                                Image("helloIcon")
                                
                            }
                            
                            Spacer()
                                .frame(height: 30)
                            
                            ZStack {
                                        Circle()
                                    .fill(RadialGradient(gradient: Gradient(colors: [Color(UIColor.ColorKey.gradientLight.rawValue), Color(UIColor.ColorKey.descriptionBackground.rawValue)]), center: .center, startRadius: 0, endRadius: 75))
                                            .frame(width: 180, height: 180)
                                            .opacity(0.5)
                                
                                Text("$246.00")
                                    .foregroundColor(.white)
                                    .font(.system(size: 16))
                                    .fontWeight(.semibold)
                            }
                            .frame(width: UIScreen.main.bounds.width - 40)
                            Spacer()
                                .frame(height: 30)
                            
                            HStack(spacing: 10) {
                                Button(action: {
                                    print("deposit")
                                }, label: {
                                    Text("Deposit")
                                        .fontWeight(.semibold)
                                        .padding()
                                        .frame(width: 160, height: 48)
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
                                    print("withdraw")
                                }, label: {
                                    Text("Withdraw")
                                        .fontWeight(.semibold)
                                        .padding()
                                        .frame(width: 160, height: 48)
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
                            
                            Spacer()
                                .frame(height: 40)
                            
                            Group {
                                HStack(spacing: 8) {
                                    
                                    Image("flameIcon")
                                    
                                    Text("Trending")
                                        .foregroundColor(.white)
                                        .font(.system(size: 20))
                                        .fontWeight(.semibold)
                                }
                                
                                Spacer()
                                    .frame(height: 20)
                                
                                VStack {
                                    ScrollView(.horizontal) {
                                        HStack(spacing: 15) {
                                            ForEach(cells, id: \.id) { cell in
                                                CellView(cell: cell)
                                            }
                                        }
                                    }
                                }
                                
                                Spacer()
                                    .frame(height: 45)
                                
                                HStack(spacing: 8) {
                                    
                                    Image("coinIcon")
                                    
                                    Text("News")
                                        .foregroundColor(.white)
                                        .font(.system(size: 20))
                                        .fontWeight(.semibold)
                                    
                                    Spacer()
                                    Button  {
                                        print("all")
                                    } label: {
                                        Text("Show all")
                                            .font(.system(size: 16))
                                            .fontWeight(.semibold)
                                            .overlay(
                                                LinearGradient(gradient: Gradient(colors: [Color(UIColor.ColorKey.gradientLight.rawValue), Color(UIColor.ColorKey.gradientDark.rawValue)]), startPoint: .leading, endPoint: .trailing)
                                            )
                                            .mask(
                                                Text("Show all")
                                                    .font(.system(size: 16))
                                                    .fontWeight(.semibold)
                                            )
                                    }
                                }
                                
                                Spacer()
                                    .frame(height: 30)
                                ScrollView(.vertical) {
                                    VStack(spacing: 15) {
                                        ForEach(newsCells, id: \.id) { cell in
                                            NewsCellView(newsCell: cell)
                                        }
                                    }
                                }
                            }
                            
                            
                            Spacer()
                            
                        }
                        .padding(.horizontal, 20)
                    }
                    
                    
                    VStack(alignment: .trailing) {
                        
                        HStack {
                            Spacer()
                            
                            KFImage(URL(string: "https://thispersondoesnotexist.com/image"))
                                .resizable()
                                .frame(width: 60, height: 60)
                                .clipShape(Circle())
                        }
                        .padding(.trailing, 20)
                        Spacer()
                    }
                }
            )
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
