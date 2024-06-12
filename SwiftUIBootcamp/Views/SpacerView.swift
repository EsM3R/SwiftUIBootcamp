//
//  SpacerView.swift
//  SwiftUIBootcamp
//
//  Created by Mehmet Vural on 16.05.2024.
//

import SwiftUI

struct SpacerView: View {
    var body: some View {
        
        VStack {
           
            RoundedRectangle(cornerRadius: 20)
                .fill(.blue)
                .frame(height: 100)
            Spacer()
            RoundedRectangle(cornerRadius: 20)
                .fill(.blue)
                .frame(height: 100)
            Spacer()
            RoundedRectangle(cornerRadius: 20)
                .fill(.blue)
                .frame(height: 100)
            Spacer()
            
            RoundedRectangle(cornerRadius: 20)
                .fill(.blue)
                .frame(height: 100)
            
            Spacer(minLength: 200)
            
            RoundedRectangle(cornerRadius: 20)
                .fill(.red)
                .frame(height: 100)
        }
        .padding(.horizontal)

        
    }
}

#Preview {
    SpacerView()
}
