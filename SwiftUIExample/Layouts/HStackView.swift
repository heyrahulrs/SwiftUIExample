//
//  HStackView.swift
//  SwiftUIExample
//
//  Created by Rahul Sharma on 6/14/19.
//  Copyright © 2019 Rahul Sharma. All rights reserved.
//

import SwiftUI

struct HStackView : View {
    
    var body: some View {
        
        HStack {
            Text("1")
                .padding()
                .background(Color.blue)
            
            Text("2")
                .padding()
                .background(Color.yellow)
            
            Text("3")
                .padding()
                .background(Color.red)
            
            Text("4")
                .padding()
                .background(Color.purple)
            
            Text("5")
                .padding()
                .background(Color.green)
            
            Text("6")
                .padding()
                .background(Color.pink)
            
        }
        
    }
    
}

#if DEBUG
struct HStackView_Previews : PreviewProvider {
    static var previews: some View {
        HStackView()
    }
}
#endif
