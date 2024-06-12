//
//  ContextMenuView.swift
//  SwiftUIBootcamp
//
//  Created by Mehmet Vural on 22.05.2024.
//

import SwiftUI

struct ContextMenuView: View {
    
    @State private var likeCount : Int = 10
    @State private var dislikeCount : Int = 5
    @State private var isLiked : Bool = false
    
    var body: some View {
        VStack{
            Text("likeCount: \(self.likeCount)")
            HStack{
                Image("jason")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40 , height: 40)
                    .clipShape(.circle)
                
                Text("jason Statham")
                Spacer()
                Image(systemName: "ellipsis")
                    .contextMenu(menuItems: {
                        Button {
                            isLiked.toggle()
                            likeCount += isLiked ? 1 : -1
                        } label: {
                            Text("I'd like to like")
                        }

                        Text("Menu Item 2")
                        Text("Menu Item 3")
                    })
                    
            }
            .padding(.horizontal ,3 )
            
            Image("jason")
                .resizable()
                .aspectRatio(1, contentMode: .fit)

            Image(systemName: "heart.fill")
                .foregroundStyle(isLiked ? .pink : .primary)
                .font(.title2)
                .onTapGesture {
                    
                    self.isLiked.toggle()
                    self.likeCount =  self.isLiked ? likeCount + 1 : likeCount - 1
                 
            
                }
        }
        
          
    }
}

#Preview {
    ContextMenuView()
}
