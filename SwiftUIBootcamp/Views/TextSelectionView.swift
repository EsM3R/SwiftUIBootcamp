//
//  TextSelectionView.swift
//  SwiftUIBootcamp
//
//  Created by Mehmet Vural on 11.06.2024.
//

import SwiftUI

struct TextSelectionView: View {
    
    @State private var textFiled : String = ""
    var body: some View {
        VStack{
            TextField("None ", text: $textFiled)
            HStack{
                
                Text("Do you want to copy this text ")
                Text("click over it ")
                    .fontWeight(.bold)
                    .foregroundStyle(Color.red)
                    .textSelection(.enabled)
                Text("click one times")
            }
        }
     
    
    }
}

#Preview {
    TextSelectionView()
}
