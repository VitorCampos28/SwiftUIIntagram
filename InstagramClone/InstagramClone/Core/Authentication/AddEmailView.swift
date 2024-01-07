//
//  AddEmailView.swift
//  InstagramClone
//
//  Created by Vitor Campos on 07/01/24.
//

import SwiftUI

struct AddEmailView: View {
    @State private var email = ""
    
    var body: some View {

        CreateAccountForm(model: createAccountFormModel())
        
        NavigationLink {
            CreateUserNameView()
                .navigationBarBackButtonHidden()
        } label: {
            Text("Next")
                .modifier(LoginButtonModifier())
        }
        Spacer()
    }
    
    private func createAccountFormModel() -> CreateAccountFormModel {
        return CreateAccountFormModel(title: "Add your email",
                                           subTitle: "You`ll use this email to sign in to your account",
                                           fieldPlaceholder: "Email")
    }
}

#Preview {
    AddEmailView()
}
