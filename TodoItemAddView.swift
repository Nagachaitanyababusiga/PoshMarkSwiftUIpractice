//
//  TodoItemAddView.swift
//  SwiftUIPractice
//
//  Created by Sarfaraz on 05/01/26.
//

import SwiftUI

struct TodoItemAddView: View {
    
    @Environment(\.dismiss) var dismiss
    @Binding var todos: [TodoItem];
    
    @State private var title: String = ""
    
    var body: some View {
        NavigationStack{
            VStack(spacing: 20){
                TextField("Enter todo", text: $title)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                Button("Add Todo"){
                    todos.append(TodoItem(title: title))
                    dismiss()
                }.buttonStyle(.borderedProminent)
                Spacer()
            }
            .navigationTitle("New Todo")
        }
    }
}
