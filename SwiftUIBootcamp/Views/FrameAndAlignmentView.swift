//
//  FrameAndAlignmentView.swift
//  SwiftUIBootcamp
//
//  Created by Mehmet Vural on 16.05.2024.
//

import SwiftUI

struct FrameAndAlignmentView: View {
    
    private let myName : String = "Mehmet"
    
    var body: some View {
        
        Text(myName)
            .foregroundStyle(Color.white)
            .frame(width: 100 , height: 100)
            .background(Color.black)
            .frame(width: 200 , height: 100 , alignment: .leading)
            .background(Color.yellow)
            .frame(width: 200 , height: 200 , alignment: .bottom)
            .background(Color.red)
            .frame(maxWidth: .infinity , alignment: .trailing)
            .background(Color.cyan)
            .frame(maxHeight: .infinity , alignment: .top)
            .background(Color.green)
    }
}

#Preview {
    FrameAndAlignmentView()
}
