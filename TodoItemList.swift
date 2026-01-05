//
//  TodoItemList.swift
//  SwiftUIPractice
//
//  Created by Sarfaraz on 05/01/26.
//

import SwiftUI

struct TodoItemList: View {
    
    @State var todos: [TodoItem] = []
    @State var flag: Bool = false
    
    var body: some View{
        NavigationStack{
            List{
                ForEach(todos){ todo in
                    NavigationLink(value: todo){
                        Text(todo.title)
                    }
                }
                .onDelete(perform: deleteTodos)
            }
            .navigationTitle("My Todos")
            .toolbar{
                Button{
                    flag = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $flag){
                TodoItemAddView(todos: $todos)
            }
            .navigationDestination(for: TodoItem.self){ todo in
                TodoItemDetailView(todo: todo)
            }
        }.padding()
    }
    
    func deleteTodos(at offsets: IndexSet){
        todos.remove(atOffsets: offsets)
    }
    
}

#Preview {
    TodoItemList()
}
