//
//  PaddingView.swift
//  SwiftUIBootcamp
//
//  Created by Mehmet Vural on 16.05.2024.
//

import SwiftUI

struct PaddingView: View {
    private let imageSize : CGFloat = 200
    var body: some View {
        VStack {
            Image("jason")
                .resizable()
                .scaledToFill()
                .frame(width: imageSize ,height: imageSize)
                .clipShape(.circle)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding([.top , .leading],15)
                
            Spacer()
        }
        .padding(.horizontal, 5)
        .frame(maxHeight: .infinity)
    
       
    }
}

#Preview {
    PaddingView()
}
