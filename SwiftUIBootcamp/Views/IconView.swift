//
//  IconView.swift
//  SwiftUIBootcamp
//
//  Created by Mehmet Vural on 16.05.2024.
//

import SwiftUI

struct IconView: View {
    var body: some View {
        Image(systemName: "flame.fill")
            .renderingMode(.original)
            .resizable()
            .scaledToFit()
            .frame(width: 100 , height: 100)
            .foregroundColor(.red)
            
//            .foregroundStyle(Color.red)
//            .font(.system(size: 40 , weight: .bold))
//            .shadow(color : .red.opacity(0.6) ,radius:10 ,x : 10 , y : 10)
//            .frame(width: 100 , height: 100)
//            .background(Color.black)
         
//            .clipShape(.rect(cornerRadius: 5))
    }
}

#Preview {
    IconView()
}
