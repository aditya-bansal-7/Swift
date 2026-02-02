//
//  ContentView.swift
//  DataFlow
//
//  Created by Aditya Bansal on 12/01/26.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(Book.self) private var book
    
    var body: some View {
        NavigationStack {
            
            
            VStack {
                Text("Title: \(book.title)")
                Text("Author: \(book.author)")
                NavigationLink{
                    BookEditView(book: book)
                }label: {
                    Text("Edit Book")
                }
            
            }
            .navigationTitle("Books")
        }
        
    }
}

#Preview {
    ContentView()
}
