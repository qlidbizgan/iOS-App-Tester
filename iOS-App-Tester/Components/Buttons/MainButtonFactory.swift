//
//  MainButtonFactory.swift
//  iOS-App-Tester
//
//  Created by Tester on 5/17/21.
//

import Foundation
import SwiftUI

class MainButtonFactory {
    static let deviceScreenWidth = UIScreen.main.bounds.width
    static let deviceScreenHeight = UIScreen.main.bounds.height
    static let numBtns = CGFloat(10)
    static let fontSz = CGFloat((((deviceScreenHeight * 0.30)/MainButtonFactory.numBtns) > 21.0) ? 21.0 : 16.0)
    static let textMaxHt = CGFloat(((deviceScreenHeight * 0.35)/MainButtonFactory.numBtns) > fontSz ? fontSz * 1.2 : fontSz * 1.03)
    
    static func newButton(text: MainButtonName, action: @escaping () -> Void) -> some View {
        return
            NavigationLink(destination: TypeText()){
                ZStack {
                    RoundedRectangle(cornerRadius: 5)
                        .background(Color(.lightGray))
                        .frame(maxWidth: deviceScreenWidth * 0.80, maxHeight:(deviceScreenHeight * 0.60)/MainButtonFactory.numBtns)
                        
                    newText(text.rawValue)
                
                }
            }
    }
    
    static func newText(_ text: String) -> some View {
        let text = Text(text)
            .bold()
            .font(Font.custom("Helvetica Neue", size: fontSz))
            .padding(4)
            .foregroundColor(Color("BtnText"))
            .background(Color(.lightGray))
            .frame(maxWidth: .infinity, maxHeight: textMaxHt)
        
        return text
    }
}