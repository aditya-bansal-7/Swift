//
//  BookEditView.swift
//  dataFlow
//
//  Created by Payal Singh on 12/01/26.
//

import SwiftUI
struct BookEditView: View {
    @Bindable var book : Book
    var body: some View {
        Form {
            TextField("Title", text:$book.title)
            TextField("Author", text:$book.author)
            
        }
        .navigationTitle("Edit Book")
        
    }
    
}
#Preview {
   
    BookEditView(book: Book(title: "Sample Title", author: "Sample Author"))
}
