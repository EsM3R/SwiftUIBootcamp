//
//  DarkModeView.swift
//  SwiftUIBootcamp
//
//  Created by Mehmet Vural on 12.06.2024.
//

import SwiftUI

struct DarkModeView: View {
    
    private let name : String = "Mehmet"
    @Environment(\.colorScheme) private var colorScheme
    @State private var isDarkMode : Bool = false
    
    var body: some View {
        
        VStack{
            
            Toggle(isOn: $isDarkMode, label: {
                Text("Change Color Scheme")
                    .foregroundStyle(.white)
            })
            RoundedRectangle(cornerRadius: 10)
                .fill(colorScheme == .light ? .cyan : .red)
                .frame(height: 100)
        
            RoundedRectangle(cornerRadius: 10)
                .fill(.black)
                .frame(height: 100)
            
            RoundedRectangle(cornerRadius: 10)
                .fill(.white)
                .frame(height: 100)
           
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.custom)
                .frame(height: 100)
        }
        .preferredColorScheme(isDarkMode ?.dark : .light)
        

    }
}

#Preview {
    DarkModeView()
}
