//
//  CreateAccountFormModel.swift
//  InstagramClone
//
//  Created by Vitor Campos on 07/01/24.
//

import Foundation
import SwiftUI

struct CreateAccountFormModel {
    var title: String
    var subTitle: String
    var fieldPlaceholder: String
    var secureField: Bool
    var buttonTitle: String
    
    init(title: String, subTitle: String, fieldPlaceholder: String, secureField: Bool = false, buttonTitle: String = "Next") {
        self.title = title
        self.subTitle = subTitle
        self.fieldPlaceholder = fieldPlaceholder
        self.secureField = secureField
        self.buttonTitle = buttonTitle
    }
}
