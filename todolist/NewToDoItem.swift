//
//  NewToDoItem.swift
//  todolist
//
//  Created by scholar on 7/18/23.
//

import SwiftUI

struct NewToDoItem: View {
    
    @State var title: String
    @State var isImportant: Bool

    @Binding var toDoItems: [ToDoList]

    var body: some View {
        VStack{
            Text("Task title:")
            TextField("Enter the task description...", text: $title)
            
            Toggle(isOn: $isImportant){
                Text("Is it important?")
                Button(action: {
                    
                }) {
                    Text("Add")
                    
                }.padding()
                
            }.padding()
        }
    }
    
}

struct NewToDoItem_Previews: PreviewProvider {
    static var previews: some View {
        NewToDoItem(title: "", isImportant: false)


        
    }
}
