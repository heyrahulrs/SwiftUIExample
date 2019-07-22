//
//  SecureFieldInput.swift
//  SwiftUIExample
//
//  Created by Rahul Sharma on 6/13/19.
//  Copyright © 2019 Rahul Sharma. All rights reserved.
//

import SwiftUI

struct SecureFieldInput : View {
    
    @State var password: String = ""
    
    var body: some View {
        SecureField("Enter Passoword", text: $password)
            .textFieldStyle(.roundedBorder)
            .padding([.leading, .trailing], 24.0)
    }
}

#if DEBUG
struct SecureFieldInput_Previews : PreviewProvider {
    static var previews: some View {
        SecureFieldInput()
    }
}
#endif
