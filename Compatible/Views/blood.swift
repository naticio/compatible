//
//  blood.swift
//  Compatible
//
//  Created by Nat-Serrano on 5/13/21.
//

import Foundation

struct blood: View {
    
    @State var myBloodType = ""
    
    var body: some View {
        
       

        Picker("Flavor", selection: $selectedFlavor) {
            Text("Chocolate").tag(Flavor.chocolate)
            Text("Vanilla").tag(Flavor.vanilla)
            Text("Strawberry").tag(Flavor.strawberry)
        }
        Text("Selected flavor: \(selectedFlavor.rawValue)")
    }
}

