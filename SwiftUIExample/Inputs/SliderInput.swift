//
//  SliderInput.swift
//  SwiftUIExample
//
//  Created by Rahul Sharma on 6/13/19.
//  Copyright © 2019 Rahul Sharma. All rights reserved.
//

import SwiftUI

struct SliderInput : View {
    
    @State var value: Double = 50
    
    var body: some View {
        
        VStack(spacing: 20.0) {
            Slider(value: $value, from: 0, through: 100, by: 1)
                .padding(.leading, 18.0)
                .padding(.trailing, 18.0)
            Text("Slider value is \(Int(value)).")
        }
        .navigationBarTitle(Text("Slider"))
        
    }
}

#if DEBUG
struct SliderInput_Previews : PreviewProvider {
    static var previews: some View {
        SliderInput()
    }
}
#endif
