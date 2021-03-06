//
//  Employee.swift
//  iOS_Networking_(Employee)
//
//  Created by kim jong moon on 06/03/2021.
//

import Foundation

struct Employee: Decodable{
    
    
    var id: Int?
    var employee_name: String?
    var employee_salary: Int?
    var employee_age: Int?
    var profile_image: String?
    
 
    init() {
        
    }
    
    init(id:Int, employee_name: String, employee_salary: Int, employee_age: Int, profile_image: String) {
        
        self.id = id
        self.employee_name = employee_name
        self.employee_salary = employee_salary
        self.employee_age = employee_age
        self.profile_image = profile_image
    }
    
}
