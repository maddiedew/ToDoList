//
//  ToDoItem.swift
//  ToDoList
//
//  Created by Scholar on 6/27/23.
//

import Foundation


class ToDoItem {
    var title = ""
    var isImportant = false
    
    init(name: String, importance: Bool = false) {
        title = name
        isImportant = importance
    }
}
