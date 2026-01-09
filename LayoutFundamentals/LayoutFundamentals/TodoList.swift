//
//  TodoList.swift
//  LayoutFundamentals
//
//  Created by Aditya Bansal on 20/12/25.
//

import SwiftUI

struct TodoModel: Identifiable {
    var title: String = "Task Title"
    var description: String = "Task Description"
    var id = UUID()
}

struct Todo: View {
    var todo: TodoModel = TodoModel()
    var body : some View {
        VStack(alignment: .leading) {
            Text(todo.title).font(.title3)
            Text(todo.description).font(.caption)
        }.padding()
            .background(.orange.opacity(0.1))
            
    }
}

struct TodoList: View {
    @State var todos: [TodoModel] = [
        TodoModel(),
        TodoModel()
    ]
    var body: some View {
        ZStack(alignment: .bottom) {
            
            ScrollView(){
                 
                    ForEach(todos) { todo in
                        Todo(todo: todo)
                    
                }
            }
            Button(){
                todos.append(TodoModel())
            } label: {
                Image(systemName: "plus").foregroundStyle(.white)
            }.padding(10).background(.blue).clipShape(.circle)
            

        }
    }
}


#Preview {
    TodoList()
}
