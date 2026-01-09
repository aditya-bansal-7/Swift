//
//  Book2.swift
//  firedcr
//
//  Created by Aditya Bansal on 08/01/26.
//

import SwiftUI
import Foundation

struct Book: Identifiable {
    var id: UUID = UUID()
    var name: String
}

struct BookCollection : Identifiable{
    let id = UUID()
    var name : String
    var desc : String
    var books : [Book]
    
}

struct Book2: View {
    
    var bookCollection = [
        BookCollection(name: "OldBooks" , desc: "These are  old Books" , books: [Book(name:"The Hobbit"), Book(name:"The Alcheist"), Book(name:"NCERT"), Book(name:"Games of Throne")])
        ,BookCollection(name: "NewBooks" , desc: "These are  New  Books" ,books : [Book(name: "Being" ),
                                                                                   Book(name: "Human")] )]
    
    @State private var Oldbooks:[Book] = [Book(name:"The Hobbit"), Book(name:"The Alcheist"), Book(name:"NCERT"), Book(name:"Games of Throne")]
    
    @State private var newBook:[Book] = [Book(name: "Being" ),
                                          Book(name: "Human")
    ]
    
    var body: some View {
        List{
            ForEach(bookCollection) { collection in
                Section{
                    ForEach(collection.books){book in
                        Text(book.name)
                    }
                }header: {
                    Text(collection.name)
                        .font(.title)
                        .bold()
                }
                
            }
            
        }
        
        
        
    }
}

#Preview {
    Book2()
}
