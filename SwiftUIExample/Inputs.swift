//
//  Inputs.swift
//  SwiftUIExample
//
//  Created by Rahul Sharma on 6/13/19.
//  Copyright © 2019 Rahul Sharma. All rights reserved.
//

import SwiftUI

struct Inputs : View {
    
    var body: some View {
        
        Group {
            NavigationLink(destination: ToggleInput()) {
                Text("Toggle")
            }
            
            NavigationLink(destination: ButtonInput()) {
                Text("Button")
            }
            
            NavigationLink(destination: TextFieldInput()) {
                Text("TextField")
            }
            
            NavigationLink(destination: SecureFieldInput()) {
                Text("SecureField")
            }
            
            NavigationLink(destination: SliderInput()) {
                Text("Slider")
            }
            
            NavigationLink(destination: SegmentedControlInput()) {
                Text("Segmented Control")
            }
            
            NavigationLink(destination: DatePickerInput()) {
                Text("Date Picker")
            }
        }
        
    }
    
}

#if DEBUG
struct Inputs_Previews : PreviewProvider {
    static var previews: some View {
        Inputs()
    }
}
#endif
