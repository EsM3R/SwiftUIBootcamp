//
//  NavigationStackView.swift
//  SwiftUIBootcamp
//
//  Created by Mehmet Vural on 18.05.2024.
//

import SwiftUI

struct NavigationStackView: View {
    
    @State private var isShowAnotherScreen : Bool = false
    @State private var pushStack : [String] = []
    
    private func addNames(){
        self.pushStack.append("Mehmet")
        self.pushStack.append("hatice".capitalized)
    }
    
    var body: some View {
        
        NavigationStack(path : $pushStack){
            VStack{
                
                Button(action: self.addNames, label: {
                    Text ("push to go")
                })
                NavigationLink("go to with hasable.int", value: 1)
                
                Button {
                    isShowAnotherScreen.toggle()
                } label: {
                    Text("Go to  another screen")
                }
                NavigationLink("go to with hasable.hasable", value: "Mehmet")

            }
            .navigationTitle("Navigation Stack")
            .padding(.horizontal , 5)
            .navigationDestination(isPresented: $isShowAnotherScreen) {
                Text("this is another screen ")
            }
            .navigationDestination(for: String.self) { name in
                Text(name)
            }
           
        }
        
    }
}

#Preview {
    NavigationStackView()
}
