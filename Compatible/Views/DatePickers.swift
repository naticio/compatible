//
//  ContentView.swift
//  Compatible
//
//  Created by Nat-Serrano on 5/13/21.
//

import SwiftUI

struct DatePickers: View {

    @State public var myBirthDate = Date()
    @State public var otherBirthDate = Date()
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Text ("Your Birthdate")
                    DatePicker("", selection: $myBirthDate, displayedComponents: .date)
                        .datePickerStyle(WheelDatePickerStyle())
                }
                
                Form {
                    Text ("Other Person Birthdate")
                    DatePicker("", selection: $otherBirthDate, displayedComponents: .date)
                        .datePickerStyle(WheelDatePickerStyle())
                }
                
                VStack {
                    NavigationLink(destination: bloodSelect()) {
                        Text("Next")
                    }
                }
                
                /*Button(action: {
                    NavigationLink(
                        destination: bloodSelect(),
                        label: {
                            Text("Next")
                        })
                            
                }, label: {
                    Text("Next")
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .padding(.all)
                        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.red/*@END_MENU_TOKEN@*/)
                        .cornerRadius(50)
                })*/

        }
        
    }
}
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DatePickers()
    }
}
