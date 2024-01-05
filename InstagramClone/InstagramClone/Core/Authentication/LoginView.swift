//
//  LoginView.swift
//  InstagramClone
//
//  Created by Vitor Campos on 05/01/24.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationStack {
            VStack(content: {
                Spacer()
                //logo image
                Image("Instagram")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 220, height: 100)
                
                VStack(content: {
                    TextField("Enter your email", text: $email)
                        .textInputAutocapitalization(.none)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .padding(.horizontal, 24)
                    
                    TextField("Enter your password", text: $password)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .padding(.horizontal, 24)
                })
                
                Button(action: {
                    print("Show forgot password")
                }, label: {
                    Text("Forgot password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing, 28)
                })
                .frame(maxWidth: .infinity, alignment: .trailing)
                
                Button(action: {
                    print("Login")
                }, label: {
                    Text("Login")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .frame(width: 360, height: 44)
                        .background(Color(.systemBlue))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .padding(.vertical)
                })
                
                HStack(content: {
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
                    
                    Text("OR")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
                })
                .foregroundStyle(.gray)
                
                HStack(content: {
                    Image("Facebook")
                        .resizable()
                        .frame(width: 20, height: 20)
                    
                    Text("Continue with Facebook")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundStyle(Color(.systemBlue))
                })
                .padding(.top, 8)
                
                Spacer()
                
                Divider()
                
                NavigationLink {
                    Text("Sign Up")
                } label: {
                    HStack(content: {
                        Text("Don`t have an account?")
                        
                        Text("Sign Up")
                            .fontWeight(.semibold)
                    })
                    .font(.footnote)
                }
                .padding(.vertical, 16)
            })
        }
    }
}

#Preview {
    LoginView()
}
