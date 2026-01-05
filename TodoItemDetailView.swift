//
//  TodoItemDetailView.swift
//  SwiftUIPractice
//
//  Created by Sarfaraz on 05/01/26.
//

import SwiftUI

struct TodoItemDetailView: View {
    let todo: TodoItem;
    var body: some View {
        VStack{
            Text(todo.title)
                .font(.largeTitle)
            
            Text("Created At")
                .font(.headline)
            Text(todo.createdAt, style: .date)
            
            Spacer();
        }.padding()
            .navigationTitle("TodoItemDetailView")
    }
}

#Preview {
    TodoItemDetailView(todo: TodoItem(title: "Hello"))
}
