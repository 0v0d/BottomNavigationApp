//
//  ListView.swift
//  BottomNavigationApp
//
//  Created by 0v0 on 2025/03/02.
//

import SwiftUI
import Shimmer

struct ListView: View {
    @State private var items = Array(1...20)
    @State private var isLoading = true
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(items, id: \.self) { index in
                    NavigationLink(destination: DetailView(index: index)) {
                        ItemRow(index: index, isLoading: isLoading)
                            .redacted(reason: isLoading ? .placeholder : [])
                    }
                }
                .onDelete(perform: deleteItems)
            }
            .disabled(isLoading)
            .listRowSpacing(10.0)
            .navigationTitle("List")
            .navigationBarTitleDisplayMode(.inline)
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                    isLoading = false
                }
            }
        }
    }
    
    func deleteItems(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
}

#Preview {
    ListView()
}
