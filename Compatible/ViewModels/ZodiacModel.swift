//
//  ZodiacModel.swift
//  Compatible
//
//  Created by Nat-Serrano on 5/13/21.
//

import Foundation

class ZodiacModel: ObservableObject {
    
    @Published var signos = [Zodiac]()
    
    init() {
        
        // Create an instance of data service and get the data
        self.signos = DataService.getLocalData()
    }
}
