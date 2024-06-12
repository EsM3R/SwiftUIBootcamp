//
//  ViewThatFitsView.swift
//  SwiftUIBootcamp
//
//  Created by Mehmet Vural on 6.06.2024.
//

import SwiftUI

struct ViewThatFitsView: View {
    var body: some View {
        
        HStack{
            ViewThatFits {
                Text("Hello , Welcome my application ")
                Text("Hello , Welcome")
                Text("hello")
            }
        }
        .frame(width: 400 ,height: 200)
    }
}

#Preview {
    ViewThatFitsView()
}
