//
//  MainButton.swift
//  iOS-App-Tester
//
//  Created by Tester on 5/16/21.
//

import Foundation

import SwiftUI
struct MainButtons: View {
    typealias mfb = MainButtonFactory
    static let deviceScreenHeight = UIScreen.main.bounds.height
    static let numBtns = CGFloat(10)
    var body: some View {
        NavigationView {
            VStack {
                Group {
                    HStack {
                        Text("Features Testing").frame(maxWidth: MainButtons.deviceScreenHeight * 0.30)
                        Text("    ").frame(maxWidth: MainButtons.deviceScreenHeight * 0.65, alignment: .trailing)
                    }
                }
                Group {
                    
                    VStack {
                        mfb.newButton(text: .TypeText, action: {print("this")})
                        mfb.newButton(text: .CustomList, action: {print("that")})
                        mfb.newButton(text: .CustomList, action: {print("that")})
                        mfb.newButton(text: .CustomList, action: {print("that")})
                        mfb.newButton(text: .CustomList, action: {print("that")})
                        mfb.newButton(text: .CustomList, action: {print("that")})
                        mfb.newButton(text: .CustomList, action: {print("that")})
                        mfb.newButton(text: .CustomList, action: {print("that")})
                        mfb.newButton(text: .CustomList, action: {print("that")})
                        mfb.newButton(text: .CustomList, action: {print("that")})
                    }
                }
            }.navigationBarTitle("iOS-App-Tester", displayMode: .automatic)
        }
    }

}