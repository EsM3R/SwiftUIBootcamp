//
//  TabsView.swift
//  SwiftUIBootcamp
//
//  Created by Mehmet Vural on 4.06.2024.
//

import SwiftUI

enum TabsViews{
    
    case home
    case globe
    case settings
}

struct TabsView: View {
    
    @State private var selectedTabView  : TabsViews = .home
    
    var body: some View {
        
        TabView(selection  : $selectedTabView ){
            AnotherScreen(tabs: $selectedTabView)
                .tabItem {
                    Label("Home", systemImage: "house")
                }
                .tag(TabsViews.home)
                
            
            Text("Glonbe Screen")
                .tabItem {
                    Label("Globe", systemImage: "globe")
                }
                .tag(TabsViews.globe)
            
            Text("Settings Screen")
                .tabItem {
                    Label("Settings", systemImage: "gear")
                        .environment(\.symbolVariants , .none)
                }
                .tag(TabsViews.settings)
        }
        .tableStyle(.inset)
    }
}

#Preview {
    TabsView()
}

struct AnotherScreen : View {
    @Binding  var tabs : TabsViews
    var body: some View {
        Button {
            tabs = .settings
        } label: {
            Text("Go to settings scrren ")
        }

    }
}
