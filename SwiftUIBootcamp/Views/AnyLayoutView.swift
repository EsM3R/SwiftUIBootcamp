//
//  AnyLayoutView.swift
//  SwiftUIBootcamp
//
//  Created by Mehmet Vural on 12.06.2024.
//

import SwiftUI

struct AnyLayoutView: View {
    
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    
    var body: some View {
        
        let layout : AnyLayout = horizontalSizeClass == .compact ?  AnyLayout(HStackLayout())
                :
            AnyLayout(VStackLayout())
        
        layout{
            Text("Name")
            Text("Name")
            Text("Name")
        }
    
    }
}

#Preview {
    AnyLayoutView()
}
