//
//  ListView.swift
//  SwiftUIExample
//
//  Created by Rahul Sharma on 6/14/19.
//  Copyright © 2019 Rahul Sharma. All rights reserved.
//

import SwiftUI

struct User : Identifiable {
    var id: Int
    var name: String
    var numberOfFriends: Int
}

struct ListView : View {
    
    var users: [User] = [.init(id: 1, name: "Tim Cook", numberOfFriends: 4),
                         .init(id: 2, name: "Craig Federighi", numberOfFriends: 9),
                         .init(id: 3, name: "Jony Ive", numberOfFriends: 1),
                         .init(id: 4, name: "Steve Jobs", numberOfFriends: 11)]
    
    var body: some View {
        
        NavigationView {
            List(users) { user in
                NavigationButton(destination: Text(user.name)) {
                    UserRow(user: user)
                }
            }
            .navigationBarItems(trailing: EditButton())
            .navigationBarTitle(Text("Users"))
        }
        
    }
    
}

struct UserRow : View {
    
    var user: User
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(user.name)
            Text("\(user.numberOfFriends) friends")
                .font(.caption)
        }
    }
    
}

#if DEBUG
struct List_Previews : PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
#endif
