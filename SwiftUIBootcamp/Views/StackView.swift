//
//  StackView.swift
//  SwiftUIBootcamp
//
//  Created by Mehmet Vural on 16.05.2024.
//

import SwiftUI

// Stacks
// VStack -> Vertical  Stack
// HStack -> Horizontal Stack
// ZStack -> ZIndex Stack
 
struct StackView: View {
    private let gradientColor : LinearGradient = 
    LinearGradient(colors: [.red ,.blue,.purple],
                   startPoint: .topLeading ,
                   endPoint: .bottomTrailing)
    var body: some View {
        ZStack{
            
            gradientColor.ignoresSafeArea()
            VStack(alignment : .leading){
                Text("Actors")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                HStack{
                    Image("jason")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 200 , height: 200)
                        .clipShape(.circle)
                    Spacer()
                    Text("Jason Statham")
                        .fontWeight(.bold)
                        .font(.title3)
                        .lineLimit(1)
                }
                Spacer()
            }
            .padding()
            
         
        }
    }
}

#Preview {
    StackView()
}
