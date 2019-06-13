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
            NavigationButton(destination: ToggleInput()) {
                Text("Toggle")
            }
            
            NavigationButton(destination: ButtonInput()) {
                Text("Button")
            }
            
            NavigationButton(destination: TextFieldInput()) {
                Text("TextField")
            }
            
            NavigationButton(destination: SecureFieldInput()) {
                Text("SecureField")
            }
            
            NavigationButton(destination: SliderInput()) {
                Text("Slider")
            }
            
            NavigationButton(destination: SegmentedControlInput()) {
                Text("Segmented Control")
            }
            
            NavigationButton(destination: DatePickerInput()) {
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
