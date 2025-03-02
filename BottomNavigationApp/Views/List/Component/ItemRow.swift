//
//  ItemRow.swift
//  BottomNavigationApp
//
//  Created by 0v0 on 2025/03/02.
//

import SwiftUI
import Shimmer

struct ItemRow: View {
    let index: Int
    let isLoading: Bool

    var body: some View {
        RowContent(index: index, isLoading: isLoading)
            .shimmering(active: isLoading)
            .redacted(reason: isLoading ? .placeholder : [])
    }
}

private struct RowContent: View {
    let index: Int
    let isLoading: Bool

    var body: some View {
        HStack {
            ItemIcon(isLoading: isLoading)

            Text("Item \(index)")
                .font(.system(.body, design: .rounded))
                .fontWeight(.medium)
        }
    }
}

private struct ItemIcon: View {
    let isLoading: Bool
    
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.gray.opacity(0.3))
                .frame(width: 50, height: 50)

            if !isLoading {
                Image(systemName: "photo")
                    .resizable()
                    .frame(width: 32, height: 32)
                    .foregroundColor(.white)
            }
        }
    }
}
