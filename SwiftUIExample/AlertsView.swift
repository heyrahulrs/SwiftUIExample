//
//  AlertsView.swift
//  SwiftUIExample
//
//  Created by Rahul Sharma on 6/15/19.
//  Copyright © 2019 Rahul Sharma. All rights reserved.
//

import SwiftUI

struct AlertsView : View {
    
    @State var isShown: Bool = false
    
    var actionSheet: ActionSheet {
        ActionSheet(title: Text("Choose an option"),
                    message: nil,
                    buttons: [
                        .default(Text("Aweomse Option"),
                                 onTrigger: {
                                    self.isShown = false
                        }),
                        .default(Text("Cool Option"),
                                 onTrigger: {
                                    self.isShown = false
                        }),
                        .cancel({
                            self.isShown = false
                        })
            ])
    }
    
    var body: some View {
        
        Group {
            
            //Alert
            
            Button(action: {
                self.isShown = true
            }) {
                Text("Alert")
                }
                .presentation($isShown) {
                    Alert(title: Text("Alert"),
                          message: Text("This is an alert."),
                          dismissButton: .default(Text("Awesome!")))
            }
            
            //Action Sheet
            
            Button(action: {
                self.isShown = true
            }) {
                Text("Action Sheet")
                }.presentation(isShown ? actionSheet : nil)
            
        }
        
    }
    
}

#if DEBUG
struct AlertsView_Previews : PreviewProvider {
    static var previews: some View {
        AlertsView()
    }
}
#endif
