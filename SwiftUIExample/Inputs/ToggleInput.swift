//
//  ToggleInput.swift
//  SwiftUIExample
//
//  Created by Rahul Sharma on 6/13/19.
//  Copyright © 2019 Rahul Sharma. All rights reserved.
//

import SwiftUI

struct ToggleInput : View {
    
    @State var isToggleOn = true
    
    var body: some View {
        
        VStack {
            Toggle(isOn: $isToggleOn) {
                Text(verbatim: "Toggle")
            }
            .padding()
            
            HStack {
                Text("Toggle is currently switched")
                Text(isToggleOn ? "on" : "off")
                    .fontWeight(.bold)
                    .foregroundColor(Color.red)
            }
        }
        
    }
    
}

#if DEBUG
struct ToggleView_Previews : PreviewProvider {
    static var previews: some View {
        ToggleInput()
    }
}
#endif
