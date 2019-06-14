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
            
            NavigationButton(destination: VStackView()) {
                Text("VStack")
            }
            
            NavigationButton(destination: HStackView()) {
                Text("HStack")
            }
            
            NavigationButton(destination: ZStackView()) {
                Text("ZStack")
            }
            
            NavigationButton(destination: ListView()) {
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
