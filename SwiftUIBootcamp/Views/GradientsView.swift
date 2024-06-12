//
//  GradientsView.swift
//  SwiftUIBootcamp
//
//  Created by Mehmet Vural on 16.05.2024.
//

import SwiftUI

struct GradientsView: View {
    
    var body: some View {
    
        ZStack {
//            LinearGradient(colors: [.red , .blue],
//                           startPoint: .topLeading,
//                           endPoint: .bottomTrailing)
//            RadialGradient(colors: [.red , .blue], center: .topLeading, startRadius: 0, endRadius: 400)
            
//            AngularGradient.init(gradient: Gradient(colors: [Color.red, Color.blue]), center: .top, angle: .degrees(0))
            
            EllipticalGradient(colors:[Color.blue, Color.green],center: .center , startRadiusFraction: 0.1, endRadiusFraction: 0.6)
            
        }
        .ignoresSafeArea()
    }
}

#Preview {
    GradientsView()
}
