//
//  MenuView.swift
//  SwiftUIBootcamp
//
//  Created by Mehmet Vural on 22.05.2024.
//

import SwiftUI

struct MenuView: View {
    @State private var sortBy : String = ""
    var body: some View {
        NavigationStack{
            ZStack {
                Text("SortBY : \(sortBy)")
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Menu("Sort", systemImage: "arrow.up.arrow.down") {
                        Button("ascending") {
                            self.sortBy = "ascending"
                        }
                        Button("descanding") {
                            self.sortBy = "descanding"
                        }
                        ControlGroup(content: {
                            Button("byName") {
                                self.sortBy = "byName"
                            }
                            Button("by age") {
                                self.sortBy = "byAge"
                            }
                        })
                    }
                }
            }
        }
    }
}

#Preview {
    MenuView()
}
