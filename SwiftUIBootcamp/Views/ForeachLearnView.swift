//
//  ForeachLearnView.swift
//  SwiftUIBootcamp
//
//  Created by Mehmet Vural on 17.05.2024.
//

import SwiftUI

enum Sex{
    case male
    case female
}

struct UserModel : Identifiable {
    let id  = UUID()
    let name : String
    let photo : String
    let sex : Sex

}

struct ForeachLearnView: View {
    
    
    
    var body: some View {
        VStack (alignment : .center){
            
            Title()
            
            UsersView()
            Spacer()
            
        }
     
    }
}

#Preview {
    ForeachLearnView()
}

struct UserCellView: View {
    
    let user : UserModel
    
    var body: some View {
        HStack {
            Image(user.photo)
                .resizable()
                .scaledToFill()
                .frame(width: 100,height: 100)
                .clipShape(.circle)
            Text(user.name)
                .font(.title3)
                .fontWeight(.semibold)
            
            Spacer()
        }
        .padding(.leading)
        .frame(maxWidth: .infinity)
        .frame(height: 125)
        .background(user.sex == .male ? .blue :  .pink )
        .clipShape(.rect(cornerRadius: 25))
        .padding([.horizontal])
    }
}

struct UsersView: View {
    
    private let users : [UserModel] = [UserModel(name: "Mehmet",
                                                 photo: "jason",
                                                 sex: .male),
                                       
                                       UserModel(name: "Hatice",
                                                 photo: "jason",
                                                 sex: .female),]
    
    var body: some View {
        ForEach(users) { user in
            UserCellView(user : user)
            
        }
    }
}

struct Title: View {
    var body: some View {
        Text("Users")
            .font(.largeTitle)
            .fontWeight(.bold)
            .frame(maxWidth: .infinity , alignment: .leading)
    }
}
