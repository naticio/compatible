//
//  bloodSelect.swift
//  Compatible
//
//  Created by Nat-Serrano on 5/13/21.
//

import SwiftUI

struct bloodSelect: View {
    
    @State private var selectedBlood = ""
    @State private var otherBlood = ""
    
    var body: some View {
        VStack {
            Form {
                Text("Selected Blood Type: \(selectedBlood)")
                Picker("", selection: $selectedBlood) {
                    Text("A").tag("A")
                    Text("B").tag("B")
                    Text("AB").tag("AB")
                    Text("O").tag("O")
                }
                .pickerStyle(SegmentedPickerStyle())
            }
            
            Form {
                Text("Selected other person Blood Type: \(otherBlood)")
                Picker("", selection: $otherBlood) {
                    Text("A").tag("A")
                    Text("B").tag("B")
                    Text("AB").tag("AB")
                    Text("O").tag("O")
                }
                .pickerStyle(SegmentedPickerStyle())
            }
                
            Button(action: {
                
            }, label: {
                Text("Find out if you're compatible")
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.all)
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.red/*@END_MENU_TOKEN@*/)
                    .cornerRadius(50)
            })
        }
    }
}

struct bloodSelect_Previews: PreviewProvider {
    static var previews: some View {
        bloodSelect()
    }
}
