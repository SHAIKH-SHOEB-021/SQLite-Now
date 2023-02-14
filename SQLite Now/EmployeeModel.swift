//
//  EmployeeModel.swift
//  SQLite Now
//
//  Created by shoeb on 11/02/23.
//

import Foundation

class Employee{
    
    var id : Int!
    var name : String!
    var age : Int!
    
    init(id : Int, name : String, age : Int){
        self.id = id
        self.name = name
        self.age = age
    }
}
