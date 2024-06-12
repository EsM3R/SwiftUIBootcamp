//
//  SheetView.swift
//  SwiftUIBootcamp
//
//  Created by Mehmet Vural on 19.05.2024.
//

import SwiftUI

struct SheetView: View {
    
    @State private var showSheet : Bool = false
    
    var body: some View {
        ZStack{
            
            Color.cyan.ignoresSafeArea()
            
            Button(action: {
                showSheet.toggle()
            }, label: {
                Text("Open the toggle")
                    .foregroundStyle(.black)
            })
        }
        .sheet(isPresented: $showSheet, content: {
            SecondView()
                .presentationDetents([.medium, .large , .fraction(0.1) , .fraction(0.25)])
                .presentationCornerRadius(30)
                .presentationDragIndicator(.visible)
                .presentationBackground(.black)
//                .presentationCompactAdaptation(.fullScreenCover)
                
                
        })
    }
}

struct SecondView : View {
    
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        ZStack{
//            Color.black
            Button("dissmiss") {
                dismiss()
            }
        }
       
    }
}


#Preview {
    SheetView()
}
