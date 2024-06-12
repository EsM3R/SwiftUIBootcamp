//
//  LongTapGestureView.swift
//  SwiftUIBootcamp
//
//  Created by Mehmet Vural on 12.06.2024.
//

import SwiftUI

struct LongTapGestureView: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
                .font(.title)
                .onLongPressGesture {
                    print("clicked")
                }
            
            Text("Hello, World!")
                .font(.title)
                .onLongPressGesture(minimumDuration: 2 , maximumDistance: 0) {
                    print("clicked 2 sec" )
                }onPressingChanged: { inProgrees in
                    print("In progress: \(inProgrees)!")
                }
            

        }
    }
}

#Preview {
    LongTapGestureView()
}
