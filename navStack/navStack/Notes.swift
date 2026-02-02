//
//  Notes.swift
//  navStack
//
//  Created by Aditya Bansal on 19/01/26.
//

import Foundation


struct Note: Identifiable {
    var id: String {
        title + subtitle + description
    }
    var title: String
    var subtitle: String
    var description: String
    
}

struct Notes {
    static let notes : [Note] = [
        Note(title: "Title1", subtitle: "Subtitle1", description: "Description1"),
        Note(title: "Title2", subtitle: "Subtitle2", description: "Description2"),
        Note(title: "Title3", subtitle: "Subtitle3", description: "Description3"),
        Note(title: "Title4", subtitle: "Subtitle4", description: "Description4"),
        Note(title: "Title5", subtitle: "Subtitle5", description: "Description5")
    ]
}


















import SwiftUI


struct NoteDetailView: View {
    var note: Note
    var body: some View {
        List {
            Text(note.subtitle)
            Text(note.description)
        }
        .navigationTitle(note.title)
    }
}


struct Note

#Preview {
    NavigationStack{
        NoteDetailView(note: Notes.notes[0])
    }
}
