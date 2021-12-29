//
//  main.swift
//  CLI
//
//  Created by alya almutairi on 24/05/1443 AH.
//

import Foundation


print("My to do list")

var tasks : [ String] = []
var userInput = ""

func readFromUser(){
    print("Please enter \"Add\" to add a new task, \"Delete\" to delete any task and \"Stop\" to stop the application")
    userInput = readLine() ?? "Stop"
}

while userInput != "Stop"{
    readFromUser()
    if userInput == "Add" || userInput == "add" {
        // get the task from user
        print("add a new task")
        let taskName = readLine() ?? ""
        tasks.append(taskName)
        
    }
    else if userInput == "Delete" || userInput == "delete"
    {
        print("enter the task you want to delete")
        if let index = readLine(){
            if let idx = Int(index){
                if idx < tasks.count{
                    tasks.remove(at: idx)
                }
                else{
                print("Index out of range")
                }
            }
        }
    }
    else {
        break
        
    }
  print(tasks)
    
}



//////////////////////////////////////////////////////////////
///

