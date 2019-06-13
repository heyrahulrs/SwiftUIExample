//
//  TextFieldInput.swift
//  SwiftUIExample
//
//  Created by Rahul Sharma on 6/13/19.
//  Copyright © 2019 Rahul Sharma. All rights reserved.
//

import SwiftUI

struct TextFieldInput : View {
    
    @State var name: String = ""
    
    var body: some View {
        VStack(spacing: 18.0) {
            TextField($name, placeholder: Text("Enter your name"))
                .textFieldStyle(.roundedBorder)
                .padding([.trailing, .leading], 28.0)
                HStack {
                    Text("TextField has text:")
                    Text(verbatim: name)
                        .bold()
                }
        }
    }
}

#if DEBUG
struct TextFieldView_Previews : PreviewProvider {
    static var previews: some View {
        TextFieldInput(name: "Tim")
    }
}
#endif
