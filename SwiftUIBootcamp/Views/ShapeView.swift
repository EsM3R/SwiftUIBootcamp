//
//  ShapeView.swift
//  SwiftUIBootcamp
//
//  Created by Mehmet Vural on 16.05.2024.
//

import SwiftUI

// All Shapes

//Rectangle: Bir dikdörtgen şekli.
//RoundedRectangle: Yuvarlatılmış köşelere sahip bir dikdörtgen şekli.
//Circle: Bir daire şekli.
//Ellipse: Bir elips şekli.
//Capsule: Bir kapsül veya hap gibi görünen bir şekil.
//Path: Doldurulabilir ve strok uygulanabilir 2D vektör yolu.


struct ShapeView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 40)
            .fill(LinearGradient(colors: [.red , .blue],
                                 startPoint: .topLeading,
                                 endPoint: .bottomTrailing))
            .stroke(Color.black, lineWidth: 5)
            .frame(width: 300 ,height: 200)
            .offset(x : 20 , y : 10)
            .rotationEffect(.degrees(75))
            .scaleEffect(1.5)
            .shadow(color : .red , radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/ ,x :10 , y : 10)
            .blur(radius: 2)

        
            
     

        
    }
}

#Preview {
    ShapeView()
}
