//
//  ContentView.swift
//  firedcr
//
//  Created by Aditya Bansal on 08/01/26.
//

import SwiftUI

struct ContentView: View {
    
    @State private var books = ["The Hobbit", "The Alcheist", "NCERT", "Games of Throne"]
    
    @State private var newBook: String = ""
    
    var body: some View {
        List(books, id:\.self){ book in
                Text(book)
        }
        
        TextField("Add a book", text: $newBook)
            .onSubmit {
                books.append(newBook)
            }
    }
}

#Preview {
    ContentView()
}
