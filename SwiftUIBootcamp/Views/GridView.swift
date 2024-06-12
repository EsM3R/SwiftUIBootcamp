//
//  GridView.swift
//  SwiftUIBootcamp
//
//  Created by Mehmet Vural on 17.05.2024.
//

import SwiftUI

struct GridView: View {
    
    private let columnFlexible : GridItem = GridItem(.flexible(),spacing: 8)
    private let columns : [GridItem]
    
    init(){
         columns  = Array(repeating: self.columnFlexible, count: 2)

    }
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 8, content: {
                
                ForEach(1 ... 10 , id :\.self) { _ in
                    ZStack(alignment : .bottom){
                        Image("jason")
                            .resizable()
                            .scaledToFit()
                    
                        VStack() {
                           
                            Text("Mehmet")
                                .foregroundStyle(.white)
                                .font(.title)
                                .fontWeight(.bold)
                                .frame(maxWidth: .infinity , alignment: .leading)
                                .padding(.leading ,8)
                            Text("Actor")
                                .foregroundStyle(.white)
                                .font(.title)
                                .fontWeight(.semibold)
                                .frame(maxWidth: .infinity , alignment: .leading)
                                .padding(.leading ,10)
                        }
                    }
                    .clipShape(.rect(cornerRadius: 25))
                }
               
                    
                
            })
        }
        .padding(.horizontal , 3)
    }
}

#Preview {
    GridView()
}
