//
//  GroupView.swift
//  SwiftUIBootcamp
//
//  Created by Mehmet Vural on 6.06.2024.
//

import SwiftUI

struct GroupView: View {
    
    private let isLoadData : Bool = false
    
    var body: some View {
        
        
        Group{

            HStack{
                Text("Dont have an account?")
                Text("Sign up")
                    .fontWeight(.bold)
            }

                
        }
        .font(.subheadline)
        .fontWeight(.semibold)
//        Group {
//            if !isLoadData{
//                ProgressView()
//            }else {
//                Text("Data is coming")
//            }
//        }
    }
}

#Preview {
    GroupView()
}
