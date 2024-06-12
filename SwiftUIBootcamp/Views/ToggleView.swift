//
//  ToggleView.swift
//  SwiftUIBootcamp
//
//  Created by Mehmet Vural on 5.06.2024.
//

import SwiftUI

struct ToggleView: View {
    
    @State private var isDarkMode : Bool = false
    var body: some View {
        ZStack(alignment :.top
        ){
            (isDarkMode ? Color.black : .white)
                .ignoresSafeArea()
            
            Toggle(isOn: $isDarkMode) {
                Text("Change Color")
                    .foregroundStyle(.primary)
            }
        }
     
    }
}

#Preview {
    ToggleView()
}
