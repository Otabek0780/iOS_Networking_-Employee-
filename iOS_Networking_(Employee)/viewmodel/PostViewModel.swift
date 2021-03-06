//
//  PostViewModel.swift
//  iOS_Networking_(Employee)
//
//  Created by kim jong moon on 06/03/2021.
//

import Foundation
class PostViewModel: ObservableObject {
    
    @Published var employees = [Data]()
    @Published var isLoading = false
    
    
    func apiEmployeeList() {
        isLoading = true
        AFHttp.get(url: AFHttp.API_POST_LIST, params: AFHttp.paramsEmpty(), handler: { response in
            self.isLoading = false
            switch response.result {
            case .success:
                //print(response.result)
//                let employees = try! JSONDecoder().decode([Data].self, from: response.data!)//......Parsing_Part
//                self.employees = employees
                self.employees = (try! JSONDecoder().decode(Employee.self, from: response.data!)).data!
            case let .failure(error):
                print(error)
            }
        })
    }
    //........---------------..........-------------...........--------------.............-------------
//    func apiEmployeeSingle(id: Int) {
//        AFHttp.get(url: AFHttp.API_POST_SINGLE + String(id), params: AFHttp.paramsEmpty(), handler: { response in
//            switch response.result {
//            case .success:
//                print(response.result)
//            case let .failure(error):
//                print(error)
//            }
//        })
//    }
//    func apiEmployeeCreate(employee: Employee) {
//        AFHttp.post(url: AFHttp.API_POST_CREATE, params: AFHttp.paramsPostCreate(employee: employee), handler: { response in
//            switch response.result {
//            case .success:
//                print(response.result)
//            case let .failure(error):
//                print(error)
//            }
//        })
//    }
//    func apiEmployeeUpdate(employee: Employee) {
//        AFHttp.put(url: AFHttp.API_POST_UPDATE + String(employee.id!), params: AFHttp.paramsPostUpdate(employee: employee), handler: { response in
//            switch response.result {
//            case .success:
//                print(response.result)
//            case let .failure(error):
//                print(error)
//            }
//        })
//    }
//    func apiEmployeeDelete(employee: Employee) {
//        AFHttp.del(url: AFHttp.API_POST_DELETE + String(employee.id!), params: AFHttp.paramsEmpty(), handler: { response in
//            switch response.result {
//            case .success:
//                print(response.result)
//            case let .failure(error):
//                print(error)
//            }
//        })
//    }
    
}
