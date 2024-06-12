//
//  BackgroundColorAndOverlayView.swift
//  SwiftUIBootcamp
//
//  Created by Mehmet Vural on 16.05.2024.
//

import SwiftUI

struct BackgroundColorAndOverlayView: View {
    
    private let imageName : String = "jason"
    private let isActive : Bool =  true
    
    var body: some View {
        
        Image(imageName)
            .resizable()
            .scaledToFill()
            .frame(width: 75 , height: 75)
            .clipShape(.circle)
            .overlay(alignment : .bottomTrailing) {
                
                 Circle()
                    .fill(isActive ?.green :.clear)
                    .frame(width: 15 , height: 15)
            }
            .frame(width: 105 , height: 105)
            .background(Color.white)
            .clipShape(.circle)
            .frame(width: 110 , height: 110)
            .background(LinearGradient(colors: [.red , .orange , .yellow],
                                       startPoint: .topLeading,
                                       endPoint: .bottomTrailing)
                )
            .clipShape(.circle)
        
    }
}

#Preview {
    BackgroundColorAndOverlayView()
}
