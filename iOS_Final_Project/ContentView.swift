//
//  ContentView.swift
//  iOS_Final_Project
//
//  Created by Jasmine Muman on 2022-08-08.
//

import SwiftUI
import Firebase
import FirebaseDatabase

class AppViewModel: ObservableObject{
    
    let auth = Auth.auth()
    
    @Published var signedIn = false
    
    var isSignedIn: Bool{
        return auth.currentUser != nil
    }
    
    func signIn(email:String, password:String){
        auth.signIn(withEmail: email, password: password){[weak self]
            result, error in
            guard result != nil, error == nil else {
                return
            }
    
            DispatchQueue.main.async {
                //success
                self?.signedIn = true
            }
        }
    }
    
    func signUp(email:String, password:String){
        auth.createUser(withEmail: email, password: password){[weak self]
            result, error in
            guard result != nil, error == nil else {
                return
            }
            DispatchQueue.main.async {
                //success
                self?.signedIn = true
            }
        }
    }
    
    func signOut(){
        try?auth.signOut()
        
        self.signedIn = false
    }
}

struct ContentView: View {
    
    @EnvironmentObject var viewModel: AppViewModel
    
    var body: some View {
        NavigationView{
            if viewModel.signedIn{
                VStack{
                    Text("You are signed in")
                    Button(action: {
                        viewModel.signOut()
                    }, label: {
                        Text("SignOut")
                            .foregroundColor(.black)
                    })
                    TabBar()
                }
            }
            else{
                SignInView()
            }
        }
        .onAppear(){
            viewModel.signedIn = viewModel.isSignedIn
        }
    }
}

struct SignUpView: View {
    @State private var email = ""
    @State private var password = ""
   
    
    @EnvironmentObject var viewModel: AppViewModel
    
    var body: some View {
            ZStack {
                Color.black
                
                RoundedRectangle(cornerRadius: 30, style: .continuous)
                    .foregroundStyle(LinearGradient(colors: [.blue,.purple], startPoint: .topLeading, endPoint: .bottomTrailing))
                    .frame(width: 1000, height: 450)
                    .rotationEffect(.degrees(150))
                    .offset(y: -50)
                
                VStack(spacing: 20){
                    Text("Create an account")
                        .foregroundColor(.white)
                        .font(.system(size: 40, weight: .bold, design: .rounded))
                        .offset(y: -100)
                    
                    TextField("Email", text: $email)
                        .disableAutocorrection(true)
                        .autocapitalization(.none)
                        .foregroundColor(.white)
                        .textFieldStyle(.plain)
                        .placeholder(when: email.isEmpty){
                            Text("Email")
                                .foregroundColor(.white)
                                .bold()
                    }
                    
                    Rectangle()
                        .frame(width: 350, height: 1)
                        .foregroundColor(.white)
                    
                    SecureField("Password", text:$password)
                        .disableAutocorrection(true)
                        .autocapitalization(.none)
                        .foregroundColor(.white)
                        .textFieldStyle(.plain)
                        .placeholder(when: password.isEmpty){
                            Text("Password")
                                .foregroundColor(.white)
                                .bold()
                        }
                    Rectangle()
                        .frame(width: 350, height: 1)
                        .foregroundColor(.white)
                    
                    Button{
                        // to register
                        //register()
                        guard !email.isEmpty, !password.isEmpty else{
                            return
                        }
                        viewModel.signUp(email: email, password: password)
                    }label: {
                        Text("Sign up")
                            .bold()
                            .frame(width: 200, height: 40)
                            .background(
                                RoundedRectangle(cornerRadius: 10, style: .continuous)
                                    .fill(.white)
                            )
                            .foregroundColor(.black
                            )
                    }
                    .padding(.top)
                    .offset(y:100)
                    
                    NavigationLink("Already have an account? Login", destination: SignInView())
                        .foregroundColor(.white)
                        .padding(.top)
                        .offset(y:110)
                }
                .frame(width:350)
            }
            .ignoresSafeArea()
    }
}

struct SignInView: View {
    @State private var email = ""
    @State private var password = ""
    
    @EnvironmentObject var viewModel: AppViewModel
    
    var body: some View {
            ZStack {
                Color.black
                
                RoundedRectangle(cornerRadius: 30, style: .continuous)
                    .foregroundStyle(LinearGradient(colors: [.blue,.purple], startPoint: .topLeading, endPoint: .bottomTrailing))
                    .frame(width: 1000, height: 450)
                    .rotationEffect(.degrees(150))
                    .offset(y: -50)
                
                VStack(spacing: 20){
                    
                    TextField("Email", text: $email)
                        .disableAutocorrection(true)
                        .autocapitalization(.none)
                        .foregroundColor(.white)
                        .textFieldStyle(.plain)
                        .placeholder(when: email.isEmpty){
                            Text("Email")
                                .foregroundColor(.white)
                                .bold()
                    }
                    
                    Rectangle()
                        .frame(width: 350, height: 1)
                        .foregroundColor(.white)
                    
                    SecureField("Password", text:$password)
                        .disableAutocorrection(true)
                        .autocapitalization(.none)
                        .foregroundColor(.white)
                        .textFieldStyle(.plain)
                        .placeholder(when: password.isEmpty){
                            Text("Password")
                                .foregroundColor(.white)
                                .bold()
                        }
                    Rectangle()
                        .frame(width: 350, height: 1)
                        .foregroundColor(.white)
                    
                    Button{
                        // to register
                        //register()
                        guard !email.isEmpty, !password.isEmpty else{
                            return
                        }
                        viewModel.signIn(email: email, password: password)
                    }label: {
                        Text("Sign in")
                            .bold()
                            .frame(width: 200, height: 40)
                            .background(
                                RoundedRectangle(cornerRadius: 10, style: .continuous)
                                    .fill(.white)
                            )
                            .foregroundColor(.black
                            )
                    }
                    .padding(.top)
                    .offset(y:100)
                    
                    NavigationLink("Not Reigstered? Create account", destination: SignUpView())
                        .foregroundColor(.white)
                    .padding(.top)
                    .offset(y:110)
                }
                .frame(width:350)
            }
            .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension View{
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {
            
            ZStack(alignment: alignment){
                placeholder().opacity(shouldShow ? 1 : 0)
                self
            }
        }
}
