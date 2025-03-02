//
//  DetailView.swift
//  BottomNavigationApp
//
//  Created by 0v0 on 2025/03/02.
//

import SwiftUI

struct DetailView: View {
    let index: Int
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                VStack(alignment: .leading, spacing: 16) {
                    Text("Item \(index)")
                        .font(.title.bold())
                }
            }
        }
    }
}

#Preview {
    DetailView(index: 1)
}
