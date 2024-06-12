//
//  StateView.swift
//  SwiftUIBootcamp
//
//  Created by Mehmet Vural on 17.05.2024.
//

import SwiftUI

struct StateView: View {
    
    @State private var _counter : Int = 0
    
    func increment() {
        self._counter += 1
    }
    
    var body: some View {
        
        VStack{
            Text("\(self._counter)")
            
            Button(action: self.increment, label: {
                Text("Increment")
                    .font(.title2)
            })
            .buttonStyle(BorderedProminentButtonStyle())
            .controlSize(.large)
            .buttonBorderShape(.roundedRectangle(radius: 10))
            
        }
    }
}

#Preview {
    StateView()
}
