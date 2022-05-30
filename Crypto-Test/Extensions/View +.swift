//
//  View +.swift
//  Crypto-Test
//
//  Created by Roman Fedotov on 29.05.2022.
//

import SwiftUI

extension View {
    
    func hasScrollEnabled(_ value: Bool) -> some View {
        self.onAppear {
            UITableView.appearance().isScrollEnabled = value
        }
    }
    
    func specialNavBar() -> some View {
        self.modifier(SpecialNavBar())
    }
    
    func normalNavBar() -> some View {
        self.modifier(NormalNavBar())
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        ModifiedContent(content: self, modifier: CornerRadiusStyle(radius: radius, corners: corners))
    }
}
