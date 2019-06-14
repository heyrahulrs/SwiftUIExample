//
//  Gradients.swift
//  SwiftUIExample
//
//  Created by Rahul Sharma on 6/14/19.
//  Copyright © 2019 Rahul Sharma. All rights reserved.
//

import SwiftUI

struct Gradients : View {
    
    var body: some View {
        
        Group {
            NavigationButton(destination: LinearGradientView()) {
                Text("Linear Gradient")
            }
            
            NavigationButton(destination: AngularGradientView()) {
                Text("Angular Gradient")
            }
            
            NavigationButton(destination: RadialGradientView()) {
                Text("Radial Gradient")
            }
        }
        
    }
    
}

#if DEBUG
struct Gradients_Previews : PreviewProvider {
    static var previews: some View {
        Gradients()
    }
}
#endif
