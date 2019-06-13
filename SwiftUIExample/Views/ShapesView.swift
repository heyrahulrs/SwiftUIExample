//
//  ShapesView.swift
//  SwiftUIExample
//
//  Created by Rahul Sharma on 6/13/19.
//  Copyright © 2019 Rahul Sharma. All rights reserved.
//

import SwiftUI

struct ShapesView : View {
    
    var body: some View {
        
        VStack(spacing: 28.0) {
            
            HStack {
                
                Path { path in
                    
                    path.move(to: CGPoint(x: 60, y: 0))
                    
                    path.addLine(to: CGPoint(x: 120, y: 120))
                    path.addLine(to: CGPoint(x: 0, y: 120))
                    
                }
                .fill(Color.red)
                .frame(width: 120, height: 120, alignment: .center)
                
                Spacer()
                
                Text("Triangle")
            }
            
            HStack {
                Circle()
                    .fill(Color.blue)
                    .frame(width: 120, height: 120)
                
                Spacer()
                
                Text("Circle")
            }
            
            HStack {
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 120, height: 120)
                
                Spacer()
                
                Text("Square")
            }
            
        }
        .padding()
        
    }
    
}

#if DEBUG
struct ShapeView_Previews : PreviewProvider {
    static var previews: some View {
        ShapesView()
    }
}
#endif
