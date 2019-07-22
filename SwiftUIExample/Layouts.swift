//
//  Layouts.swift
//  SwiftUIExample
//
//  Created by Rahul Sharma on 6/14/19.
//  Copyright © 2019 Rahul Sharma. All rights reserved.
//

import SwiftUI

struct Layouts : View {
    
    var body: some View {
        
        Group {
            
            NavigationLink(destination: VStackView()) {
                Text("VStack")
            }
            
            NavigationLink(destination: HStackView()) {
                Text("HStack")
            }
            
            NavigationLink(destination: ZStackView()) {
                Text("ZStack")
            }
            
            NavigationLink(destination: ListView()) {
                Text("List")
            }
            
        }
        
    }
}

#if DEBUG
struct Layouts_Previews : PreviewProvider {
    static var previews: some View {
        Layouts()
    }
}
#endif
