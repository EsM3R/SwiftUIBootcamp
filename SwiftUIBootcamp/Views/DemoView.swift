//
//  DemoView.swift
//  SwiftUIBootcamp
//
//  Created by Mehmet Vural on 22.05.2024.
//

import SwiftUI

struct DemoView: View {
    
    @State private var color = Color.red
    @State private var upperBound : Int = 10
   
    var body: some View {
        ScrollView {
            LazyVStack{
                ForEach(1 ... upperBound , id : \.self){ _ in
                    RoundedRectangle(cornerRadius: 5)
                        .fill(color)
                        .frame(height: 200)
                }
                ProgressView()
                    .onAppear{
                        self.upperBound += 5
                    }
                   
            }
          
        }
    }
}

#Preview {
    DemoView()
}
