//
//  CreateAccountForm.swift
//  InstagramClone
//
//  Created by Vitor Campos on 07/01/24.
//

import SwiftUI

struct CreateAccountForm: View {
    @State private var fieldValue = ""
    @Environment(\.dismiss) var dismiss
    
    
    let model: CreateAccountFormModel
    
    init(model: CreateAccountFormModel) {
        self.model = model
    }
    
    var body: some View {
        VStack(spacing: 12) {

            AccountFormTitleAndSubTitle(title: model.title, subTitle: model.subTitle)
            
            if model.secureField {
                SecureField(model.fieldPlaceholder, text: $fieldValue)
                    .textInputAutocapitalization(.none)
                    .modifier(LoginTextFieldModifier())
            } else {
                TextField(model.fieldPlaceholder, text: $fieldValue)
                    .textInputAutocapitalization(.none)
                    .modifier(LoginTextFieldModifier())
            }
            
        }
        .toolbar(content: {
            ToolbarItem(placement: .topBarLeading) {
                Image(systemName: "chevron.left")
                    .imageScale(.large)
                    .onTapGesture {
                        dismiss()
                    }
            }
        })
    }
}

#Preview {
    CreateAccountForm(model: CreateAccountFormModel(title: "Add your email", subTitle: "You`ll use this email to sign in to your account", fieldPlaceholder: "Email", buttonTitle: "Login"))
}
