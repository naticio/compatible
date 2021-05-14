//
//  ContentView.swift
//  Compatible
//
//  Created by Nat-Serrano on 5/13/21.
//

import SwiftUI

struct DatePickers: View {
    @EnvironmentObject var model:ZodiacModel
    
    @State public var myBirthDate = Date()
    @State public var otherBirthDate = Date()
    @State public var myAnimal = ""
    @State public var otherAnimal = ""
    
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
                        Button {
                            ForEach(0..<model.signos.count) { index in
                                if myBirthDate >= model.signos[index].from && myBirthDate <= model.signos[index].to {
                                    myAnimal = model.signos[index].animal
                                }
                            }
                        } label: {
                            Text("Next")
                        }
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
