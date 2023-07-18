//
//  ContentView.swift
//  todolist
//
//  Created by scholar on 7/18/23.
//

import SwiftUI

struct ContentView: View {
    @State var ToDoList: [ToDoList] = []
    @State private var showNewTask = false
    var body: some View {
        VStack {
            HStack {
                Text("To Do List")
                    .font(.system(size:40))
                    .fontWeight(.black)
                Spacer()
                Button(action:
                        { self.showNewTask = true
                    
                }){
                    Text("+")
                }
            }
            
        }.padding()
        List {
            ForEach (ToDoList) { ToDoList in
                Text(ToDoList.title)
                
            }
        }
        if showNewTask{
            NewToDoItem(title: "",isImportant: false)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
