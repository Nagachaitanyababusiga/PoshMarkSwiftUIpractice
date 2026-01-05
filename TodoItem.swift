//
//  TodoItem.swift
//  SwiftUIPractice
//
//  Created by nagachaitanyababu on 05/01/26.
//

import Foundation

struct TodoItem: Identifiable,Hashable{
    let id = UUID()
    let title: String;
    let createdAt: Date = Date();
}
