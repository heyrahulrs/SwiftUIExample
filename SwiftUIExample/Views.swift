//
//  Views.swift
//  SwiftUIExample
//
//  Created by Rahul Sharma on 6/13/19.
//  Copyright © 2019 Rahul Sharma. All rights reserved.
//

import SwiftUI

struct Views : View {
    
    var body: some View {
        
        Group {
            NavigationLink(destination: TextView()) {
                Text("Text")
            }
            
            NavigationLink(destination: ImageView()) {
                Text("Image")
            }
            
            NavigationLink(destination: ShapesView()) {
                Text("Shape")
            }
        }
        
    }
    
}

#if DEBUG
struct Views_Previews : PreviewProvider {
    static var previews: some View {
        Views()
    }
}
#endif
