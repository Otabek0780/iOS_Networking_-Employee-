//
//  ContentView.swift
//  iOS_Networking_(Employee)
//
//  Created by kim jong moon on 06/03/2021.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel = PostViewModel()
    
    var body: some View {
        
        NavigationView {
            ZStack{
                List(self.viewModel.employees, id: \.id){ employee in
                    VStack(alignment: .leading){
                        Text(employee.employee_name!).bold()
                        HStack{
                            Text("Age: ").font(.subheadline)
                            Text(employee.employee_age!).font(.subheadline)
                            Text("| Salary: ").font(.subheadline)
                            Text(employee.employee_salary!).font(.subheadline)
                            
                        }
                }
                if self.viewModel.isLoading {
                    ProgressView()
                }
            }
            .listStyle(PlainListStyle())
            .navigationBarTitle("Post")
            
        }.onAppear{
            self.viewModel.apiEmployeeList()
            //viewModel.apiEmployeeSingle(id: 719)
            //let employee = Employee(name: "test", salary: "123", age: "23", id: "", image: "")
            //viewModel.apiEmployeeCreate(employee: employee)
            //viewModel.apiEmployeeUpdate(employee: employee)
            //viewModel.apiEmployeeDelete(employee: employee)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
