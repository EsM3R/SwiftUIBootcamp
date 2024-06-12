//
//  ContentUnavailableView.swift
//  SwiftUIBootcamp
//
//  Created by Mehmet Vural on 22.05.2024.
//

import SwiftUI

struct ContentUnavailableViews: View {
    var body: some View {
        
        NavigationStack{
            ContentUnavailableView {
                Label("No new messages", systemImage: "bubble")
            } description: {
                Text("when you concat a Host or send a reservation request you will see your messages here.")
            }
            .navigationTitle("Inbox")
        }
       
    }
}

#Preview {
    ContentUnavailableViews()
}
