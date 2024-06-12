//
//  SafeAraeView.swift
//  SwiftUIBootcamp
//
//  Created by Mehmet Vural on 17.05.2024.
//

import SwiftUI

struct SafeAraeView: View {
    var body: some View {
        ZStack{
            
            Color.red.ignoresSafeArea(edges: [.horizontal,.bottom ])
            
            Text("Mehmet Vural")
            
        }
    }
}

#Preview {
    SafeAraeView()
}
