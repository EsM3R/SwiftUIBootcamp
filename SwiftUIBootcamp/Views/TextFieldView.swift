//
//  TextFieldView.swift
//  SwiftUIBootcamp
//
//  Created by Mehmet Vural on 11.06.2024.
//

import SwiftUI


class User : Identifiable , Equatable {


    let id = UUID()
    let userName  : String
    let password  : String
    
    init(userName: String, password: String) {
        self.userName = userName
        self.password = password
    }
    
    static func == (lhs: User, rhs: User) -> Bool {
        lhs.userName == rhs.userName &&
        lhs.password == rhs.password
    }
    
}
    

protocol LoginProtocol {
    func login(_ user : User )
    
}

protocol LogoutProtocol {
    func logout()
    
}

class AuthServiceManager {
    
    var allUser : [User] = []
    
    
    init(){
        getAllUser()
    }
    
    
    func getAllUser(){
        let exampleUsers : [User] = [
        
            .init(userName: "Mehmet", password: "123"),
            .init(userName: "Hatice", password: "123"),
            .init(userName: "Mahmut", password: "123"),
            
        ]
        
        self.allUser.append(contentsOf: exampleUsers)
    }
}

class AuthManager : LoginProtocol , LogoutProtocol {
    
    let authServiceManager = AuthServiceManager()
    var isLoggedIn : Bool = false
    func login(_ user: User) {
    
        if checkUser(user){
            if existUser(user){
                print("\(user.userName) is logged in")
                isLoggedIn = true
            }else {
                print("\(user.userName) user not found our db ")
            }
           
        }else {
            print("namefeild or passwordfield cannot blank")
        }
        
    }
    
    func logout() {
        print("User is logged out ")
        isLoggedIn = false
    }
    
    func checkUser(_ user: User) -> Bool {
        if user.userName.isEmpty || user.password.isEmpty{
            return false
        }
        return true
    }
    
    func existUser(_ user : User) -> Bool{
        
        let allUsers = authServiceManager.allUser
        
        for serviceUser in allUsers {
            
            if user == serviceUser {
                return true
            }
        }
        
        return false
    }
    
}

@Observable
class AuthViewModel {

    var isLoggedIn : Bool = false
    var userNameField : String = ""
    var passwordField : String = ""
    
    let authManager = AuthManager()
    
    func login(){
        let user = User(userName: userNameField, password: passwordField)
        authManager.login(user )
        isLoggedIn = authManager.isLoggedIn
        print(isLoggedIn.description)
    }
    
    func logout(){
        
        authManager.logout()
        isLoggedIn = authManager.isLoggedIn
        clearInputFields()
        print(isLoggedIn.description)
    }
    
    func clearInputFields(){
        self.userNameField = self.userNameField
        self.passwordField = ""
    }
}

struct TextFieldView: View {
    
    @State private var viewModel = AuthViewModel()
    
    var body: some View {
        NavigationStack{
            
            Group{
                if viewModel.isLoggedIn {
                    Button(action: {
                        viewModel.logout()
                    }, label: {
                        Text("logout")
                    })
                }else {
                    VStack{
                        
                        TextField("enter userName", text: $viewModel.userNameField)
                            .onSubmit {
                                print("hello world")
                            }
                        SecureField("enter password", text: $viewModel.passwordField)
                        Button(action: {
                            viewModel.login()
                        }, label: {
                            Text("Login")
                        })
                        
                    }
                }
            }
            .navigationTitle("Login")
        }
      
        
    }
}

#Preview {
    TextFieldView()
}
