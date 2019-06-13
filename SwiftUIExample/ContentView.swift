//
//  ContentView.swift
//  SwiftUIExample
//
//  Created by Rahul Sharma on 6/13/19.
//  Copyright © 2019 Rahul Sharma. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    
    var body: some View {
        NavigationView {
            List {
                
                Section {
                    Views()
                }
                
                Section  {
                    Inputs()
                }
                
                Section  {
                    Gestures()
                }
                
            }
            .listStyle(.grouped)
            .navigationBarTitle(Text("SwiftUI"))
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice(PreviewDevice(rawValue: "iPhone XS"))
            .environment(\.colorScheme, .dark)
    }
}
#endif
