//
//  Friends.swift
//  firedcr
//
//  Created by Aditya Bansal on 08/01/26.
//

import SwiftUI

struct Friends:View {
    @State private var friends = ["abc", "xyz", "zzz", "qwerty"]
    
    @State private var newFriend: String = ""
    
    var body: some View {
        List(friends, id:\.self){ friend in
                Text(friend)
        }
        
        TextField("Add a new friend", text: $newFriend)
            .onSubmit {
                friends.append(newFriend)
            }
    }
}

#Preview {
    Friends()
}
