//
//  ContentView.swift
//  BottomNavigationApp
//
//  Created by 0v0 on 2025/03/02.
//

import SwiftUI

struct ContentView: View {
    @State var selectedTab: BottomTabs = .account
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    switch selectedTab {
                    case .account:
                        Text("Account")
                    case .group:
                        Text("Group")
                    case .add:
                        Text("Add")
                    case .list:
                      ListView()
                    case .item:
                        Text("Item")
                    }
                }
              
                BottomBar(selectedTab: $selectedTab)
            }
            .background(Color(.systemGroupedBackground))
        }
    }
}

        
#Preview {
    ContentView()
}

