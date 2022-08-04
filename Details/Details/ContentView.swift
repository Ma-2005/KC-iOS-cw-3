//
//  ContentView.swift
//  Details
//
//  Created by Mac on 03/08/2022.
//

import SwiftUI

struct SecureTextField: View {
    
    @State private var isSecureField: Bool = true
    @State  var text: String
    
    var body: some View {
        HStack{
            if isSecureField {
                SecureField("    Password", text: $text )
            } else {
                TextField(text, text: $text )
            }
        }.overlay(alignment: .trailing) {
            Image(systemName: isSecureField ? "eye.slash" : "eye")
                .padding()
                .onTapGesture {
                isSecureField.toggle()
            }
        }
    }
}

struct ContentView: View {
    
    @State var first_name = ""
    
    @State var last_name = ""
    
    @State var username = ""
    
    @State private var Password = ""
    
    var body: some View {
        
        ZStack{
            Image("11")
                .resizable()
                .ignoresSafeArea()
            
            
            VStack{
                
                VStack(spacing: 120){
                    
                    VStack(spacing: 35){
                        
                        Text("Hello again  \(username)👋🏻 ")
                            .foregroundColor(.white)
                            .font(.system(size: 25, weight: .semibold, design: .serif))
                        
                        Text("Hi : \(first_name) \(last_name)")
                            .foregroundColor(.white)
                            .font(.system(size: 25, weight: .semibold, design: .serif))
                        
                    }
                    
                    HStack{
                        
                        TextField("    First name", text: $first_name )
                            .font(.custom("CF", size: 24))
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                        TextField("    Last name", text: $last_name )
                            .font(.system(size: 24, weight: .semibold, design: .serif))
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                    }
                    
                }
                .padding()
                
                
                
                
                
                TextField("    username", text: $username )
                    .font(.system(size: 24, weight: .semibold, design: .serif))                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                SecureTextField(text: Password)
                    .font(.system(size: 24, weight: .semibold, design: .serif))                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                
                
                
                
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}
