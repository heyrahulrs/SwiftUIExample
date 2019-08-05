//
//  VStackView.swift
//  SwiftUIExample
//
//  Created by Rahul Sharma on 6/14/19.
//  Copyright © 2019 Rahul Sharma. All rights reserved.
//

import SwiftUI

struct VStackView : View {
    
    @State var value: Double = 0
    
    var body: some View {
        
        VStack(spacing: CGFloat(value)) {
            
            Text("First Text")
                .frame(width: 280.0, height: 64.0)
                .background(Color.red)
            
            Text("Second Text")
                .frame(width: 280.0, height: 64.0)
                .background(Color.green)
            
            Text("Third Text")
                .frame(width: 280.0, height: 64.0)
                .background(Color.blue)
            
            Text("Fourth Text")
                .frame(width: 280.0, height: 64.0)
                .background(Color.purple)
            
            Text("Fifth Text")
                .frame(width: 280.0, height: 64.0)
                .background(Color.yellow)
            
            Text("Move Slider to change spacing:")
                .frame(width: 280.0, height: 64.0)
            
            Slider(value: $value, in: 1...10)
                .padding(28.0)
        }
    }
}

struct MyText : View {
    
    var verbatim: String
    
    var body: some View {
        Text(verbatim: verbatim)
            .padding(28.0)
    }
    
}

#if DEBUG
struct VStackView_Previews : PreviewProvider {
    static var previews: some View {
        VStackView()
    }
}
#endif
