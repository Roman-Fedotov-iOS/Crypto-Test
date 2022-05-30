//
//  OnboardingView.swift
//  Crypto-Test
//
//  Created by Roman Fedotov on 26.05.2022.
//

import SwiftUI

struct OnboardingView: View {
    
    @AppStorage("needsAppOnboarding") private var needsAppOnboarding: Bool = true
    
    var body: some View {
        if needsAppOnboarding == false {
            HomeView()
        } else {
        OnboardingScreen()
        }
    }
}

struct OnboardingScreen: View {
    
    @AppStorage("currentPage") var currentPage = 1
    
    @AppStorage("needsAppOnboarding") private var needsAppOnboarding: Bool = true
    
    var body: some View {
        
        Color.black
            .ignoresSafeArea()
            .overlay(
                ZStack() {
                    if currentPage == 1 {
                        ScreenView(image: "onboardingFirst", title: "Easiness", description: "Supplying the convenient transactions chains")
                    }
                    if currentPage == 2 {
                        ScreenView(image: "onboardingSecond", title: "Security", description: "Providing crypto audience with high-tech security solutions")
                    }
                    if currentPage == 3 {
                        ScreenView(image: "onboardingThird", title: "Transormation", description: "Diversifying crypto investment experience worldwide")
                    }
                }
                    .ignoresSafeArea()
            )
    }
    
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}

struct ScreenView: View {
    
    var image: String
    var title: String
    var description: String
    
    @AppStorage("currentPage") var currentPage = 1
    
    @AppStorage("needsAppOnboarding") private var needsAppOnboarding: Bool = true
    
    var body: some View {
        VStack(spacing: 20) {
            
            Spacer()
                .frame(height: 170)
            
            
            Image(image)
                .aspectRatio(contentMode: .fit)
            
            Spacer()
                .frame(height: 60)
            
            VStack() {
                Text(title)
                    .kerning(-0.3)
                    .font(.title)
                    .font(.system(size: 32))
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding(.top, 42)
                    .padding(.bottom, 16)
                
                Text(description)
                    .kerning(-0.3)
                    .font(.system(size: 16))
                    .fontWeight(.semibold)
                    .foregroundColor(Color(UIColor.ColorKey.textColor.rawValue))
                    .multilineTextAlignment(.center)
                    .frame(width: 270, height: 40)
                    .padding(.bottom, 24)
                
                Button(action: {
                    withAnimation(.easeInOut) {
                        
                        if currentPage < totalPages {
                            currentPage += 1
                        } else {
                            needsAppOnboarding = false
                        }
                    }
                }, label: {
                    Text("Continue")
                        .fontWeight(.semibold)
                        .padding()
                        .frame(width: 295, height: 56)
                        .background(LinearGradient(gradient: Gradient(colors: [Color(UIColor.ColorKey.gradientLight.rawValue), Color(UIColor.ColorKey.gradientDark.rawValue)]), startPoint: .leading, endPoint: .trailing))
                        .cornerRadius(30)
                        .font(.system(size: 16))
                        .foregroundColor(.white)
                        .padding(.bottom, 42)
                        .padding(.horizontal, 20)
                })
            }
            .background(Color(UIColor.ColorKey.descriptionBackground.rawValue))
            .cornerRadius(30)
            
            Spacer(minLength: 200)
        }
    }
}

var totalPages = 3
