//
//  CompleteSignUpView.swift
//  InstagramClone
//
//  Created by Vitor Campos on 07/01/24.
//

import SwiftUI

struct CompleteSignUpView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        AccountFormTitleAndSubTitle(title: "Welcome to Instagram, joseAlfredo", subTitle: "Click below to complete registration and start using Instagram.")
        
        NavigationLink {
        } label: {
            Text("Complete Sign Up")
                .modifier(LoginButtonModifier())
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
    CompleteSignUpView()
}
