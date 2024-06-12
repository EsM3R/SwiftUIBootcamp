//
//  BadgeView.swift
//  SwiftUIBootcamp
//
//  Created by Mehmet Vural on 6.06.2024.
//

import SwiftUI

struct BadgeView: View {
    var body: some View {
        
        
        List {
            Text("mehnetVural")
                .badge("newContent")
        }
//
//        TabView {
//            Home()
//                .tabItem {
//                Image(systemName: "house")
//            }
//            .badge("new")
//        }
//        
//        TabView {
//            Home()
//                .tabItem {
//                Image(systemName: "house")
//            }
//            .badge(20)
//        }
    }
}

#Preview {
    BadgeView()
}

struct Home :View {

    var body: some View{
        Text("home")
    }
}
