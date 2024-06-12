//
//  SliderView.swift
//  SwiftUIBootcamp
//
//  Created by Mehmet Vural on 8.06.2024.
//

import SwiftUI

struct SliderView: View {
    
    @State private var sliderValue : Double =  0
    
    var formatted : String {
        return String(format: "%.2f", sliderValue)
    }
    var upperBound : Int  {
        return Int(sliderValue)
    }
    
    var body: some View {
        Text("Slider : \(formatted)")
        
  
        Slider(value: $sliderValue , in : 1 ... 5 , step: 1) {
            Text("Rating")
        } minimumValueLabel: {
            Text("1")
        } maximumValueLabel: {
            Text("5")
        }
        
        HStack{
            ForEach(0 ..< upperBound   , id : \.self){_ in
                HStack{
                    Image(systemName: "star.fill")
                        .foregroundStyle(Color.yellow)
                }
                
            }
            ForEach(upperBound  ..< 5 , id : \.self){_ in
                HStack{
                    Image(systemName: "star.fill")
                        .foregroundStyle(Color.black)
                }
                
            }

        }
        
    }
}

#Preview {
    SliderView()
}
