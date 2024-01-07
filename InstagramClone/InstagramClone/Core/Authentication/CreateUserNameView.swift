//
//  CreateUserNameView.swift
//  InstagramClone
//
//  Created by Vitor Campos on 07/01/24.
//

import SwiftUI

struct CreateUserNameView: View {
    @State private var username = ""
    
    var body: some View {
        CreateAccountForm(model: createAccountFormModel())
        
        NavigationLink {
            PasswordView()
                .navigationBarBackButtonHidden()
        } label: {
            Text("Next")
                .modifier(LoginButtonModifier())
        }
        Spacer()
    }
    
    private func createAccountFormModel() -> CreateAccountFormModel {
        return CreateAccountFormModel(title: "Create Username",
                                      subTitle: "You`ll use this email to sign in to your account",
                                      fieldPlaceholder: "Username")
    }
}

#Preview {
    CreateUserNameView()
}
