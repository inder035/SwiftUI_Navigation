//
//  NavigationView2.swift
//  TestNavigation
//
//  Created by Inderjeet Singh on 01/08/24.
//

import SwiftUI

struct NavigationView2: View {
    @Binding var path: NavigationPath
    
    @State private var username = String()
    @State private var password = String()
    @State private var isError : Bool = false
    @State private var errorMessage = String()
        
    var body: some View {
        VStack {
            VStack {
                TextField("Username", text: $username)
                    .padding()
                    .border(Color.black)
                    
                TextField("Password", text: $password)
                    .padding()
                    .border(Color.black)
        
                Button(action: {
                    if username.isEmpty {
                        errorMessage = "Username is empty"
                        isError = true
                    }else if password.isEmpty {
                        errorMessage = "Password is empty"
                        isError = true
                    }else{
                        path.append(ViewType.third)
                    }
                }, label: {
                    Text("Login")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .tint(Color.white)
                        .background(Color.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                })
            }
            .padding()
            .alert(isPresented: $isError) {
                Alert(title: Text("Error"),
                      message: Text(errorMessage),
                      dismissButton: .default(Text("OK")))
            }
            
            
            Text("Push to third view")
            NavigationLink(value: ViewType.third) {
                Text("Push Next")
                    .padding()
                    .tint(Color.white)
                    .background(Color.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
            }
        }
    }
}

#Preview {
    NavigationView2(path: .constant(NavigationPath()))
}
