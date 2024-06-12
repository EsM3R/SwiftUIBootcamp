//
//  BackgroundMaterialView.swift
//  SwiftUIBootcamp
//
//  Created by Mehmet Vural on 22.05.2024.
//

import SwiftUI

struct BackgroundMaterialView: View {
    
    @State private var showSheet : Bool = false
    
    var body: some View {
        
        ZStack {
            Image("jason")
                .resizable()
            
            Button {
                showSheet.toggle()
            } label: {
                Text("Open the sheet")
            }
        }
        .sheet(isPresented: $showSheet, content: {
            Text("Hi , Jason")
                .presentationDetents([.fraction(0.5)])
                .presentationDragIndicator(.visible)
                .presentationCompactAdaptation(.sheet)
                .presentationCornerRadius(40)
                .presentationBackground(Material.thin)
        })
        .ignoresSafeArea()
    }
}

#Preview {
    BackgroundMaterialView()
}
