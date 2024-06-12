//
//  StepperView.swift
//  SwiftUIBootcamp
//
//  Created by Mehmet Vural on 8.06.2024.
//

import SwiftUI

struct StepperView: View {
    
    @State private var age : Int = 19
    @State private var brainAge : Int = 0
   
    var body: some View {
        VStack{
            Text("Your age ; \(age)")
            Stepper("Enter your age ", value: $age, in: 1 ... 100 )
            Text("Your  brain age ; \(brainAge)")
            Stepper("Enter Your brain age") {
                brainAge += 5
            } onDecrement: {
                brainAge -= 5
            }
        }
    }
}

#Preview {
    StepperView()
}
