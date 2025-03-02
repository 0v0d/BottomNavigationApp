//
//  TabContentView.swift
//  BottomNavigationApp
//
//  Created by 0v0 on 2025/03/02.
//

import SwiftUI

 private struct TabContentView: View {
     var body: some View {
         TabView {
             Tab("Account", systemImage: "person") {
                Text("Account")
             }
             
             Tab("Group", systemImage: "person.3") {
                 Text("Group")
             }
             
             Tab("Add", systemImage: "plus") {
                 Text("Add")
             }
             
             Tab("List", systemImage: "list.bullet") {
                ListView()
             }
             
             Tab("Item", systemImage: "cart") {
                 Text("Item")
             }
         }
     }
 }

#Preview {
   TabContentView()
}
