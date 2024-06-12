//
//  MagnificationGestureView.swift
//  SwiftUIBootcamp
//
//  Created by Mehmet Vural on 12.06.2024.
//

import SwiftUI

struct MagnificationGestureView: View {
    
    @State private var currentAmount  = 0.0
    private var fixedAmount = 1.0

    var body: some View {
        
        VStack{
            HStack{
                
                Image("jason")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 56 ,height:  56)
                    .clipShape(.circle)
                
                Text("Json")
                    .fontWeight(.bold )
                
                Spacer()
                
                Image(systemName: "ellipsis")
                
                
            }
            .padding(.horizontal , 5)
            
            Image("jason")
                .resizable()
                .aspectRatio(1, contentMode: .fit)
                .scaleEffect(fixedAmount + currentAmount)
                .gesture(
                    MagnifyGesture()
                        .onChanged { value in
                            let lastAmount = value.magnification - 1
                            if lastAmount >= 0 && lastAmount <= 0.5  {
                                self.currentAmount = value.magnification - 1
                            }
                            
                        }
                        .onEnded({ value  in
                            self.currentAmount = 0
                        })
                )
                
            HStack{
                Group{
                    Image(systemName: "heart")
                    Image(systemName : "bubble")
                    Image(systemName: "paperplane")
                    
                    Spacer()
                    
                    Image(systemName: "bookmark")
                }
                .font(.title2)
                .fontWeight(.semibold)
            }
            
        }
//        Text("Mehmet Vural")
//            .frame(width: 100 , height: 100)
//            .background(Color.red)
//            .scaleEffect(1 + currentAmount)
//            .gesture(
//                MagnifyGesture()
//                    .onChanged({ value in
//                        self.currentAmount = value.magnification - 1
//                    })
//                    .onEnded({ value in
//                        self.currentAmount = 0
//                    })
//            )
    }
}

#Preview {
    MagnificationGestureView()
}
