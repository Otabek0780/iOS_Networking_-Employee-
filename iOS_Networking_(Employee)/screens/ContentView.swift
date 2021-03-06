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
            Text("Hello, world!")
                .padding()
        }.onAppear{
            //viewModel.apiEmployeeList()
            //viewModel.apiEmployeeSingle(id: 719)
            let employee = Employee(name: "test", salary: "123", age: "23")
            viewModel.apiEmployeeCreate(employee: employee)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
