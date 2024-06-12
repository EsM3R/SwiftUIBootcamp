//
//  PopoverView.swift
//  SwiftUIBootcamp
//
//  Created by Mehmet Vural on 19.05.2024.
//

import SwiftUI

struct PopoverView: View {
    
    @State private var showPopover : Bool = false
    @State private var color : Color = .yellow
    
    var body: some View {
        ZStack{
            color.ignoresSafeArea()
        
            Button("Open Popover") {
                showPopover.toggle()
            }
            
            .popover(isPresented: $showPopover, attachmentAnchor: .point(.bottomTrailing) , content: {
                
                VStack{
                    Button("Change Color ") {
                        self.color = .red
                    }
                    Divider()
                    Button("Reupdate Color ") {
                        self.color = .yellow
                    }
                }
                .padding()
                .presentationDetents([.fraction(0.5)])
                .presentationCompactAdaptation(.popover)
            })
        }
   
    }
}

#Preview {
    PopoverView()
}
