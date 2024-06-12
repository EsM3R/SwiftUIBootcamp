//
//  OnAppear.swift
//  SwiftUIBootcamp
//
//  Created by Mehmet Vural on 22.05.2024.
//

import SwiftUI

struct OnAppear: View {
    
    @State private var upperBound : Int = 5
    
    var body: some View {
        NavigationStack{
            VStack {
                HStack{
                    Text("upperBound : \(self.upperBound)")
                }
                
                ScrollView{
                    LazyVStack{
                        ForEach(1 ... upperBound , id : \.self){ _ in
                                RoundedRectangle(cornerRadius: 40)
                                .frame(height: 200)
                                .padding(.horizontal)
                        }
                        ProgressView()
                            .scaleEffect(1.5)
                            .onAppear{
                                print("opened")
                                self.upperBound += 5
                            }
                            .onDisappear{
                                self.upperBound -= 2
                            }
                           
                    }
                    
                }
            }
        }
    }
}

#Preview {
    OnAppear()
}
