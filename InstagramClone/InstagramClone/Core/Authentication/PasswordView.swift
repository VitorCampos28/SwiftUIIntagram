//
//  PasswordView.swift
//  InstagramClone
//
//  Created by Vitor Campos on 07/01/24.
//

import SwiftUI

struct PasswordView: View {
    var body: some View {
        CreateAccountForm(model: createAccountFormModel())
        
        NavigationLink {
            CompleteSignUpView()
                .navigationBarBackButtonHidden()
        } label: {
            Text("Next")
                .modifier(LoginButtonModifier())
        }
        Spacer()
    }
    
    private func createAccountFormModel() -> CreateAccountFormModel {
        
        return CreateAccountFormModel(title: "Create a password",
                                      subTitle: "Your password must be at least 6 characters in lenght",
                                      fieldPlaceholder: "Password",
                                      secureField: true)
    }
}

#Preview {
    PasswordView()
}
