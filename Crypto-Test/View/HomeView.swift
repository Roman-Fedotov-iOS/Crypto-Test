//
//  HomeView.swift
//  Crypto-Test
//
//  Created by Roman Fedotov on 27.05.2022.
//

import SwiftUI

struct HomeView: View {
    
    @State var selection = 0
    
    init() {
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor(named: "descriptionBackground")
        UITabBar.appearance().standardAppearance = appearance
        if #available(iOS 15.0, *) {
            UITabBar.appearance().scrollEdgeAppearance = appearance
        } else {
            // Fallback on earlier versions
        }
    }
    
    var body: some View {
        TabView(selection: $selection) {
            ProfileView()
                .tabItem {
                    if selection == 0 {
                        Image("profileSelected")
                    } else {
                        Image("profile")
                    }
                }.tag(0)
            ChartView()
                .tabItem {
                    if selection == 1 {
                        Image("chartSelected")
                    } else {
                        Image("chart")
                    }
                }.tag(1)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
