//
//  NewToDo.swift
//  ToDoList
//
//  Created by Scholar on 6/27/23.
//

import SwiftUI

struct NewToDo: View {
    @State var title: String
    @State var isImportant: Bool
    
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
            }
            .padding()
        }
    }
}

struct NewToDo_Previews: PreviewProvider {
    static var previews: some View {
        NewToDo(title: "", isImportant: false)
    }
}
