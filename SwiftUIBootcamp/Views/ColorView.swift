//
//  ColorView.swift
//  SwiftUIBootcamp
//
//  Created by Mehmet Vural on 16.05.2024.
//

import SwiftUI

struct ColorView: View {
    var body: some View {
        
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.custom)
            .shadow(color : .custom.opacity(0.8),
                    radius: 10,
                    x :10 ,
                    y : 10)
            .frame(width: 300 , height: 200)
            
    }
}

#Preview {
    ColorView()
        
}
