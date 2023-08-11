//
//  NewToDoView.swift
//  ToDoList_Help
//
//  Created by scholar on 6/19/23.
//

//** This file contains all the code for the "popup" screen where users can add their own ToDo Item**

import SwiftUI

struct NewToDoView: View {
    
    //In Iteration 2, add @Environment here
    
    //Add a State property called title that will hold a String
    
    @State var title: String
    
    //Add a State property called isImportant that will hold a Boolean
    @State var isImportant: Bool
    
    //Bind the ToDoItems array here
        //Delete the ToDoItems array binding in iteration 2
    
    //Bind the showNewTask property here
    
    var body: some View {
        VStack {
            //Add Text View containing "Task title" here
            Text("Task Title")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color(hue: 0.882, saturation: 1.0, brightness: 0.599))
            
            //Add TextField here with the Text "Enter task description" and binded to the title state property (text: $title)
            TextField(" Enter task description", text: $title)
                .frame(height: 50.0)
                .border(Color.gray, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                .padding()
            
            //Add Toggle here that is binded to isImportant (isOn: $isImportant) and the text "Is it important?"
            Toggle(isOn: $isImportant) {
                Text("Is it important?")
                .foregroundColor(Color(hue: 0.882, saturation: 1.0, brightness: 0.599))
            }
           
            //Add a padding modifier
            .padding()
            
            //Add Button here, delete any code in the action and with the text "Add"
            Button(action: {

            }) {
                Text("Add")
                    .font(.title3)
            }
            
            
            
            //Add a padding modifier
            .padding()
            .frame(width: 200.0, height: 50.0)
            .background(Color(hue: 0.781, saturation: 0.17, brightness: 1.0))
            .foregroundColor(.black)
            .cornerRadius(15)
    
        }
    }
    //Add the private function addTask here
        //In Iteration 2, update the function to save input to Core Data
}

struct NewToDoView_Previews: PreviewProvider {
    static var previews: some View {
        //Add defaults for title (title: "") and isImportant (isImportant: false) here
        NewToDoView(title: "", isImportant: false)
        
            //Add toDoItems: .constant([]) here (Iteration 1)
            //Add showNewTask: .constant(true) (Iteration 1)
            //Delete toDoItems: .constant([]) (Iteration 2_

    }
}
