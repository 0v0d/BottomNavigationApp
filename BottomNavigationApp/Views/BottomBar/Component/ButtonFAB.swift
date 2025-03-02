//
//  ButtonFAB.swift
//  BottomNavigationApp
//
//  Created by 0v0 on 2025/03/03.
//

import SwiftUI

struct ButtonFAB: View {
    let action: () -> Void
    let image: String
    
    var body: some View {
        Button(action: action){
            RoundedRectangle(cornerRadius: 12)
                .frame(width: 50, height: 50)
                .foregroundColor(.purple)
        }
        .overlay(alignment: .center){
            Image(systemName: image)
                .font(.title)
                .foregroundColor(.white)
        }
        .offset(y: -40)
    }
}
