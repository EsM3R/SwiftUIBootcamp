//
//  ImageView.swift
//  SwiftUIBootcamp
//
//  Created by Mehmet Vural on 16.05.2024.
//

import SwiftUI

struct ImageView: View {
    
    var body: some View {
        Image("jason")
            .renderingMode(.original)
            .resizable()
            .scaledToFill()
//            .foregroundStyle(.blue)
            .frame(width: 100 , height: 100)
            .clipShape(.circle)
            
    }
}

#Preview {
    ImageView()
        
}
