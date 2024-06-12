//
//  SafeAreaInsetView.swift
//  SwiftUIBootcamp
//
//  Created by Mehmet Vural on 5.06.2024.
//

import SwiftUI

struct SafeAreaInsetView: View {
    var body: some View {
        TabView{
            Chats()
                .tabItem {
                    Label("home", systemImage: "message")
                }
            
            Text("Updatas")
                .tabItem {
                    Label("home", systemImage: "arrow.clockwise")
                }
            Text("Communities")
                .tabItem {
                    Label("Communities", systemImage: "person.3")
                }
            
            Text("Calls")
                .tabItem {
                    Label("Calls", systemImage: "phone")
                }
        }
    }
}

#Preview {
    SafeAreaInsetView()
}

struct Chats : View {
    var body: some View {
        ScrollView {
            VStack{
                NavBar
                Users
            }
         
            .padding(.horizontal , 5)
        }
        .safeAreaInset(edge: .bottom, alignment: .trailing, content: {
            Button(action: {
                print("creata new chat")
            }, label: {
                Image(systemName: "plus")
                    .foregroundStyle(.white)
                    .font(.title)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color.green)
                    )
            })
            .padding()
        })
     
    }
    private var NavBar : some View {
        HStack {
            Text("WhatsApp")
                .font(.title)
                .foregroundStyle(.green)
                .fontWeight(.bold)
            Spacer()
            
            Group{
                Image(systemName: "camera")
                Image(systemName: "magnifyingglass")
                Image(systemName: "ellipsis")
                    .rotationEffect(.degrees(90))
            }
            .font(.title2)
            .fontWeight(.semibold)
            
        }
      
        
      
    }
    private var Users : some View {
        ForEach(1 ... 20 , id : \.self){ _ in
            User
        }
    }
    private var User : some View {
    
        HStack(alignment:.top){
            Image("jason")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 72 ,height: 72 )
                .clipShape(.circle)
    
            VStack(alignment : .leading,spacing: 12){
            
                Text("Jason Statham")
                    .font(.headline)
                    .fontWeight(.semibold)
                
                Text("last message is becoming here ")
                    .lineLimit(1)
            }
            Text("Yesterday".capitalized)
                .font(.subheadline)
            
            
     
            Spacer()
            
        }
        .padding(.vertical , 5)
    }
}
