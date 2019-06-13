//
//  ImageView.swift
//  SwiftUIExample
//
//  Created by Rahul Sharma on 6/13/19.
//  Copyright © 2019 Rahul Sharma. All rights reserved.
//

import SwiftUI

struct ImageView : View {
    
    var body: some View {
        
        VStack {
        
            HStack {
                Text("Circle Image")
                Spacer()
                TurtleRockImage()
                    .clipShape(Circle())
            }.padding()
            
            HStack {
                Text("Image With Border")
                Spacer()
                TurtleRockImage()
                    .overlay(Rectangle().stroke(Color.red, lineWidth: 10.0))
            }.padding()
            
            HStack {
                Text("Image With Shadow")
                Spacer()
                TurtleRockImage()
                    .shadow(radius: 10.0)
            }.padding()
            
        }
        
    }
}

struct TurtleRockImage : View {
    
    var body: some View {
        Image("turtlerock")
            .resizable()
            .frame(width: 128, height: 128)
            .aspectRatio(contentMode: .fit)
    }
}

#if DEBUG
struct ImageView_Previews : PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
#endif
