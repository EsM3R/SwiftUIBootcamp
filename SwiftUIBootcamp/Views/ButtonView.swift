//
//  ButtonView.swift
//  SwiftUIBootcamp
//
//  Created by Mehmet Vural on 17.05.2024.
//

import SwiftUI

struct ButtonView: View {
    
    @State private var title : String = ""
    
    var body: some View {
       VStack
        {
            Text(self.title)
                .font(.title)
                .fontWeight(.bold)
            Spacer()
            
            Button("SayHelloe") {
                self.title = "Hi,There"
            }
            
            Button(action: {
                self.title = "New Feature"
            }, label: {
                
                Text("New Feature")
                    .font(.system(.title2 , weight: .bold))
                    .frame(width: 200)
                    
            })
            .buttonStyle(BorderedProminentButtonStyle())
            .controlSize(.extraLarge)
            .buttonBorderShape(.roundedRectangle(radius: 10))
            .tint(.red)
            
            Button(action: {
                self.title = "I am Developer"
            }, label: {
                HStack {
                    Image(systemName: "apple.logo")
                    Text("Developer")
                    
                }
                .foregroundStyle(Color.black)
                .font(.title2)
                .fontWeight(.bold)
                .padding()
                .padding(.horizontal)
                .background(Capsule().stroke(.black , lineWidth: 1).fill(Color.gray.opacity(0.2)))
                
            })
            Button(action: {
                self.title = ""
            }, label: {
                Image(systemName: "arrow.circlepath")
                    .font(.title)
                    .fontWeight(.bold)
            })
        }
    }
}

#Preview {
    ButtonView()
}
