//
//  NewGridView.swift
//  SwiftUIBootcamp
//
//  Created by Mehmet Vural on 12.06.2024.
//

import SwiftUI

struct NewGridView: View {
    var body: some View {
        
        
        ScrollView {
            
            ForEach(1 ... 20 , id : \.self) {_ in
                Grid {
                    GridRow {
                        
                        Group{
                            
                            Image("jason") 
                                .resizable()
                                .scaledToFill()
                            Image("jason")
                                .resizable()
                                .scaledToFill()
                        }
                        
                        .clipShape(.rect(cornerRadius: 10))
                
                    }
                
                }
            }
        }
        
//        Grid {
//            GridRow {
//                Image(systemName: "car")
//                    .resizable()
//                    .gridCellColumns(6)
//            }
//            GridRow {
//                Color.red
//                    .gridCellColumns(2)
//                Color.blue
//                    .gridCellColumns(2)
//                Color.yellow
//                    .gridCellColumns(2)
//            }
//            GridRow {
//                Color.black
//                    .gridCellColumns(3)
//                Color.green
//                    .gridCellColumns(3)
//                
//        
//            }
//        }
        
      
    }
}

#Preview {
    NewGridView()
}
