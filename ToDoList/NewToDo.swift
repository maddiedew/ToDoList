//
//  NewToDo.swift
//  ToDoList
//
//  Created by Scholar on 6/27/23.
//

import SwiftUI

struct NewToDo: View {
    @Environment(\.managedObjectContext) var context
    @State var title: String
    @State var isImportant: Bool
    @Binding var showNewTask: Bool
    
    var body: some View {
        
        VStack {
            Text("Task Title:")
                .font(.title)
                .fontWeight(.bold)
                .padding()
            
            TextField("Enter the task decription here...", text: $title
            )
            .multilineTextAlignment(.center)
            .border(Color.gray, width:1)
            .padding()
            
            Toggle(isOn: $isImportant) {
                Text("Is this important?")
                    .padding()
            }
            
            Button("Add") {
                self.addTask(title: self.title, isImportant: self.isImportant)
                self.showNewTask = false
            }
            .padding()
        }
    }
    private func addTask(title: String, isImportant: Bool = false){
        
        let task = ToDo(context: context)
        task.id = UUID()
        task.title = title
        task.isImportant = isImportant
        
        do {
            try context.save()
        } catch {
            print(error)
        }
    }
}

//struct//

struct NewToDo_Previews: PreviewProvider {
    static var previews: some View {
        NewToDo(title: "", isImportant: false, showNewTask: .constant(true))
    }
}
