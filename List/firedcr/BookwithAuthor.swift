//
//  BookwithAuthor.swift
//  firedcr
//
//  Created by Aditya Bansal on 08/01/26.
//

import SwiftUI

enum Genre: String {
    case mystery = "Mystery"
    case thriller = "Thriller"
    case horror = "Horror"
    case fantasy = "Fantasy"
    case scifi = "Sci Fi"
}

struct Bookz:Identifiable {
    var id = UUID()
    var name: String
    var author: String
    var genre: Genre
    var coverImage: String
}

struct BookwithAuthor: View {
    
    var books: [Bookz] = [
        Bookz(
            name: "Normal People",
            author: "Sally Rooney",
            genre: .mystery,
            coverImage: "sampleImage"
        ),
        Bookz(
            name: "The Girl with the Dragon Tattoo",
            author: "Stieg Larsson",
            genre: .thriller,
            coverImage: "sampleImage"
        ),
        Bookz(
            name: "The Golden Notebook",
            author: "Doris Lessing",
            genre: .mystery,
            coverImage: "sampleImage"
        ),
        Bookz(
            name: "Life of Pi",
            author: "Yann Martel",
            genre: .fantasy,
            coverImage: "sampleImage"
        ),
        Bookz(
            name: "The Alchemist",
            author: "Paulo Coelho",
            genre: .fantasy,
            coverImage: "sampleImage"
        ),
        Bookz(
            name: "The Hobbit",
            author: "J.R.R. Tolkien",
            genre: .fantasy,
            coverImage: "sampleImage"
        ),
        Bookz(
            name: "The Martian",
            author: "Andy Weir",
            genre: .scifi,
            coverImage: "sampleImage"
        ),
        Bookz(
            name: "1984",
            author: "George Orwell",
            genre: .scifi,
            coverImage: "sampleImage"
        ),
        Bookz(
            name: "2001: A Space Odyssey",
            author: "Arthur C. Clarke",
            genre: .scifi,
            coverImage: "sampleImage"
        ),
        Bookz(
            name: "I, Robot",
            author: "Isaac Asimov",
            genre: .scifi,
            coverImage: "sampleImage"
        )
    ]
    
    
    
    var body: some View {
        List(){
            ForEach(books){
                book in
                BookListRowView(book: book)
            }        }
    }
}


struct BookListRowView: View {
    var book: Bookz
    var body: some View {
        HStack {
            Image(book.coverImage)
                .resizable()
                .frame(width: 100,height: 125)
            
            VStack(alignment: .leading, spacing: 10) {
                Text(book.name).font(.title)
                Text(book.author)
                Text(book.genre.rawValue)
                    .font(.caption)
                    .bold()
                    .foregroundStyle(.white)
                    .padding(5)
                    .background(.black)
                    .cornerRadius(10)
            }
        }
    }
}

#Preview {
    BookwithAuthor()
}
