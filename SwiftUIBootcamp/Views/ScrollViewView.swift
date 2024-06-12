//
//  ScrollViewView.swift
//  SwiftUIBootcamp
//
//  Created by Mehmet Vural on 17.05.2024.
//

import SwiftUI

struct ScrollViewView: View {
    
    private let catergories : [String] = ["All" ,"Downloaded","Archived","Favorited"]
    
    var body: some View {
        VStack {
            HStack {
                Text("My Courses")
                    .fontWeight(.bold)
                Spacer()
                Group{
                    Image(systemName: "magnifyingglass")
                    Image(systemName: "cart")
                }
                .fontWeight(.bold)
                .foregroundStyle(.gray)
        
            }
            .font(.title2)
            
            ScrollView(.horizontal) {
                HStack{
                    ForEach(catergories , id : \.self) { category in
                        Text(category)
                            .padding()
                            .background(
                                Capsule()
                                .stroke(.black, lineWidth: 3))
                            .padding(.vertical)
                            
                    }
                  
                }
            }
            .scrollIndicators(.hidden)
            
            
            ScrollView {
                LazyVStack{
                    HStack {
                        Image("jason")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 125 , height: 125)
                            .clipped()
                        
                       
                        
                        VStack(alignment : .leading) {
                            Text("Course Name")
                                .font(.headline)
                                .fontWeight(.bold)
                            
                            Text("Course Description ")
                                .font(.headline)
                                
                            
                        }
                        Spacer()
                   
                    }
                }

            }
        }
        .padding(.horizontal , 5)
    
    }
}

#Preview {
    ScrollViewView()
}
