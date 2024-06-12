//
//  TextEditorView.swift
//  SwiftUIBootcamp
//
//  Created by Mehmet Vural on 11.06.2024.
//

import SwiftUI

struct TextEditorView: View {
    
    @State private var aboutMe : String = ""
    
    var body: some View {
        NavigationStack{
            TextEditor(text: $aboutMe)
                .navigationTitle("About Me")
                .frame(width: 200 , height: 300)
                .clipShape(.rect(cornerRadius: 50))
                .foregroundStyle(.black)
                .colorMultiply(.blue)
                .background(Color.red)
                .autocorrectionDisabled()
                
        }
       
    }
}

#Preview {
    TextEditorView()
}
