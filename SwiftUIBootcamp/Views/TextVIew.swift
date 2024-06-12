//
//  TextVIew.swift
//  SwiftUIBootcamp
//
//  Created by Mehmet Vural on 16.05.2024.
//

import SwiftUI

struct TextVIew: View {
    private var  name : String = "Mehmet Vural"
    
    init() {
//        for _ in  1 ... 2  {
//            name += " " + name
//        }
    }

    var body: some View {
        Text(name)
//            .dynamicTypeSize(.accessibility5)
//            .font(.title)
//            .fontWeight(.bold)
//            .bold()
//            .italic()
//            .underline(pattern: .dot , color : .red)
//            .strikethrough(pattern: .solid , color : .cyan)
//            .foregroundStyle(Color.white)
//            .padding()
//            .background(Color.black)
//            .multilineTextAlignment(.center)
//            .frame(maxWidth: .infinity)
//            .frame(height: 200)
//            .lineSpacing(8)
//            .kerning(3)
//            .tracking(3)
//            .dynamicTypeSize(.accessibility1)
//            .accessibilityLabel("this is a title")
//            .baselineOffset(15)
//            .lineLimit(1)
//            .truncationMode(.head)
            .allowsTightening(true)
            .minimumScaleFactor(1.0)
            
    }
}

#Preview {
    TextVIew()
}
