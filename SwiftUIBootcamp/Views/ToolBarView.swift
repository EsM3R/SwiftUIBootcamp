//
//  ToolBarView.swift
//  SwiftUIBootcamp
//
//  Created by Mehmet Vural on 4.06.2024.
//

import SwiftUI

struct ToolBarView: View {
    
    @State private var centerText :  String = "empty"
    
    var body: some View {
        
        
        NavigationStack {
            VStack{
                Text("\(centerText)")
            }
            .navigationTitle("Learn Toolbar")
            .toolbar {
                ToolbarItem(placement:.status) {
                    Button("status") {
                        
                    }
                }
                ToolbarItem(placement:.cancellationAction) {
                    Button("status") {
                        
                    }
                }
                ToolbarItem(placement:.navigation) {
                    Button("status") {
                        
                    }
                }
                ToolbarItem(placement:.confirmationAction) {
                    Button("status") {
                        
                    }
                }
                ToolbarItem(placement: .principal) {
                    Button("status") {
                        
                    }
                }
                ToolbarItem(placement:.confirmationAction) {
                    Button("status") {
                        
                    }
                }
                
            }
        }
       
    }
}

#Preview {
    ToolBarView()
}
