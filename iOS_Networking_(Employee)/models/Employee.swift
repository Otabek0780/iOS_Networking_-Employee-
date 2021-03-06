//
//  Employee.swift
//  iOS_Networking_(Employee)
//
//  Created by kim jong moon on 06/03/2021.
//

import Foundation

struct Employee: Decodable{
    
    var status: String?
    var data: [Data]
    
}
struct Data: Decodable {
    
    var employee_name: String?
    var employee_salary: String?
    var employee_age: String?
    var id: String?
    var profile_image: String?
    
    init() {
        
    }
    
    init(name: String, salary: String, age: String, id: String, image: String) {
        
        self.id = id
        self.employee_name = name
        self.employee_salary = salary
        self.employee_age = age
        self.profile_image = image
    }
}
