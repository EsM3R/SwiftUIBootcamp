//
//  BindingView.swift
//  SwiftUIBootcamp
//
//  Created by Mehmet Vural on 17.05.2024.
//

import SwiftUI

struct BindingView: View {
    
    @State private var showAnotherBackgroundColor : Bool = true

    
    var body: some View {
        ZStack {
            (showAnotherBackgroundColor ?  Color.yellow: Color.black).ignoresSafeArea()
            ExtractedView(showAnotherBackgroundColor: $showAnotherBackgroundColor)
        }
    }
}

#Preview {
    BindingView()
}

struct ExtractedView: View {
    @Binding var showAnotherBackgroundColor : Bool
    
    var body: some View {
        Button("ChangeColor") {
            showAnotherBackgroundColor.toggle()
        }
    }
}
