//
//  SegmentedControlInput.swift
//  SwiftUIExample
//
//  Created by Rahul Sharma on 6/13/19.
//  Copyright © 2019 Rahul Sharma. All rights reserved.
//

import SwiftUI

struct SegmentedControlInput : View {
    
    @State var selectedIndex = 0
    
    var fruits = ["Apple", "Orange", "Strawberry"]
    
    var body: some View {
        
        VStack(spacing: 20.0) {
            Picker(selection: $selectedIndex, label: Text("Selection")) {
                ForEach(0..<3) { index in
                    Text(self.fruits[index]).tag(index)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding(.leading, 24.0)
            .padding(.trailing, 24.0)
            
            Text("Favorite fruit is \(self.fruits[selectedIndex])")
        }
        .navigationBarTitle(Text("Segmented Control"), displayMode: .inline)
        
    }
    
}

#if DEBUG
struct SegmentedControlInput_Previews : PreviewProvider {
    static var previews: some View {
        SegmentedControlInput()
    }
}
#endif
