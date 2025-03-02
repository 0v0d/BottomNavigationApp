//
//  BottomBar.swift
//  BottomNavigationApp
//
//  Created by 0v0 on 2025/03/02.
//

import SwiftUI



struct BottomBar: View {
    @Binding var selectedTab: BottomTabs
    
    var body: some View {
        // Geometryを使用して、BottomBarの幅を画面幅に合わせる
        //ToolbarItemを使用すると当たり判定がおかしくなるため、Geometryを使用してBottomBarの幅を画面幅に合わせる
        GeometryReader { geometry in
            VStack {
                Spacer()
                BottomBarContent(selectedTab: $selectedTab)
                    .padding(.top, 15)
                    .frame(width: geometry.size.width)
                    .background(Color(.systemBackground))
            }
        }
    }
}

private struct BottomBarContent: View {
    @Binding var selectedTab: BottomTabs
    
    var body: some View {
        HStack {
            BottomBarButton(image: "person.fill", text: "Account", tab: .account)
            
            BottomBarButton(image: "person.3.fill", text: "Group", tab: .group)
            
            ButtonFAB(action: {
                selectedTab = .add
            }, image: "plus")
            
            BottomBarButton(image: "list.bullet.rectangle.portrait", text: "List", tab: .list)
            
            BottomBarButton(image: "cart.fill", text: "Item", tab: .item)
        }
        .frame(maxWidth: .infinity)
        .padding(.horizontal, 5)
        .frame(height: 50)
    }
    
    private func BottomBarButton(
        image: String,
        text: String,
        tab: BottomTabs
    ) -> some View {
        Button {
            selectedTab = tab
        } label: {
            VStack(spacing: 5) {
                Image(systemName: image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(selectedTab == tab ? .purple : .gray)
                
                Text(text)
                    .font(.footnote)
                    .foregroundColor(selectedTab == tab ? .purple : .gray)
            }
        }
        .frame(maxWidth: .infinity)
    }
}



#Preview {
    BottomBar(selectedTab: .constant(.account))
}
