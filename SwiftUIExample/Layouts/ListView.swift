//
//  ListView.swift
//  SwiftUIExample
//
//  Created by Rahul Sharma on 6/14/19.
//  Copyright © 2019 Rahul Sharma. All rights reserved.
//

import SwiftUI

struct User {
    var id: Int
    var name: String
    var numberOfFriends: Int
}

struct ListView : View {
    
    @State var users: [User] = [.init(id: 1, name: "Tim Cook", numberOfFriends: 4),
                         .init(id: 2, name: "Craig Federighi", numberOfFriends: 9),
                         .init(id: 3, name: "Jony Ive", numberOfFriends: 0),
                         .init(id: 4, name: "Steve Jobs", numberOfFriends: 11)]
    
    var body: some View {
        
        List {
            ForEach(users, id: \.id) { user in
                NavigationLink(destination: Text(user.name)) {
                    UserRow(user: user)
                }
            }
            .onMove(perform: move)
            .onDelete(perform: delete)
        }
        .navigationBarItems(trailing: EditButton())
        .navigationBarTitle(Text("Users"))
        
    }
    
    func delete(at offsets: IndexSet) {
        users.remove(atOffsets: offsets)
    }
    
    func move(from source: IndexSet, to destination: Int) {
        users.move(fromOffsets: source, toOffset: destination)
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
