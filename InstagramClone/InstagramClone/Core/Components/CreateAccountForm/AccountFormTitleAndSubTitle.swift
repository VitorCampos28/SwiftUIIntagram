//
//  AccountFormTitleAndSubTitle.swift
//  InstagramClone
//
//  Created by Vitor Campos on 07/01/24.
//

import SwiftUI

struct AccountFormTitleAndSubTitle: View {
    var title: String
    var subTitle: String
    
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.bold)
            .padding(.top)
        
        Text(subTitle)
            .font(.footnote)
            .foregroundStyle(.gray)
            .multilineTextAlignment(.center)
            .padding(.horizontal, 24)
    }
}

#Preview {
    AccountFormTitleAndSubTitle(title: "Teste", subTitle: "Test")
}
