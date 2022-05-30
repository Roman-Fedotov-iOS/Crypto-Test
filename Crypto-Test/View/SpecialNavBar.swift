//
//  SpecialNavBar.swift
//  Crypto-Test
//
//  Created by Roman Fedotov on 29.05.2022.
//

import SwiftUI

struct SpecialNavBar: ViewModifier {

    init() {
        //Use this if NavigationBarTitle is with Large Font
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]

        //Use this if NavigationBarTitle is with displayMode = .inline
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
        
        UINavigationBar.appearance().backgroundColor = UIColor(named: "descriptionBackground")
        
        if #available(iOS 13.0, *) {
                    let statusBar = UIView(frame: UIApplication.shared.keyWindow?.windowScene?.statusBarManager?.statusBarFrame ?? CGRect.zero)
                    statusBar.backgroundColor = UIColor(named: "descriptionBackground")
                    UIApplication.shared.keyWindow?.addSubview(statusBar)
        } else {
            
        }
    }

    func body(content: Content) -> some View {
        content
    }

}

struct NormalNavBar: ViewModifier {

    init() {
        //Use this if NavigationBarTitle is with Large Font
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]

        //Use this if NavigationBarTitle is with displayMode = .inline
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
        
        UINavigationBar.appearance().backgroundColor = .black
        
        if #available(iOS 13.0, *) {
                    let statusBar = UIView(frame: UIApplication.shared.keyWindow?.windowScene?.statusBarManager?.statusBarFrame ?? CGRect.zero)
            statusBar.backgroundColor = .black
                    UIApplication.shared.keyWindow?.addSubview(statusBar)
        } else {
            
        }
    }

    func body(content: Content) -> some View {
        content
    }

}
