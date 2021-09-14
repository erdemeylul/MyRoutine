//
//  RoutineViewModel.swift
//  ApiIntegration
//
//  Created by Erdem Senol on 14.09.2021.
//

import Foundation

class RoutineViewModel: ObservableObject{
    @Published var routines:[Routine] = []
    
    init(){
        fetch()
    }
    
    func fetch(){
        let apiKey = "Vp7pCsG596rirms5UqNhvcX0A2PlKWLi"
        guard let url = URL(string: "http://getenroute.se/BE-stg/public/api/user/products/routine?access_token=\(apiKey)") else {return}
        URLSession.shared.dataTask(with: url){data, response, error in
            if let data = data{
                if let decoder = try? JSONDecoder().decode(Product.self , from: data){
                    DispatchQueue.main.async {
                        self.routines = decoder.routine
                    }
                }
            }
        }.resume()
    }
}
