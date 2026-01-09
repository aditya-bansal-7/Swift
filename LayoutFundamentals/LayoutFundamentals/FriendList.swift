//
//  FriendList.swift
//  LayoutFundamentals
//
//  Created by Aditya Bansal on 20/12/25.
//

import SwiftUI

struct Friend:Identifiable {
    var name: String
    var id = UUID()
}


struct FriendList: View {
    @State var friends: [Friend] = [
        Friend(name: "abc"),
        Friend(name: "xyz"),
        Friend(name: "azg"),
        Friend(name: "amore"),
    ]
    var body: some View {
        VStack {
            ForEach(friends){
                friend in Text(friend.name)
            }
            .padding()
            
            Button("Add new friend"){
                friends.append(Friend(name: "New Friend"))
            }
        }
    }
}

#Preview {
    FriendList()
}
