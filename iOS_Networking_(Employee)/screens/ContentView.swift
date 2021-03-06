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
            viewModel.apiEmployeeList()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
