//
//  Gestures.swift
//  SwiftUIExample
//
//  Created by Rahul Sharma on 6/13/19.
//  Copyright © 2019 Rahul Sharma. All rights reserved.
//

import SwiftUI

struct Gestures : View {
    
    var body: some View {
        
        Group {
            NavigationButton(destination: TapGestureView()) {
                Text("Tap Gesture")
            }
            
            NavigationButton(destination: DragGestureView()) {
                Text("Drag Gesture")
            }
            
            NavigationButton(destination: Text("Coming Soon")) {
                Text("Long Press Gesture")
            }
        }
        
    }
    
}

#if DEBUG
struct Gestures_Previews : PreviewProvider {
    static var previews: some View {
        Gestures()
    }
}
#endif
