//
//  User.swift
//  Compatible
//
//  Created by Nat-Serrano on 5/13/21.
//

import Foundation //x

class Zodiac: Identifiable, Decodable {
    //COMMMENT
    var id:UUID?
    var from:Date
    var to:Date
    var animal:String
    var type:String
    var personality:String
    var perfectMatch:String
    var complement:String
    var onlyFriends:String
    var average:String
    var notCompatible:Int
    var loveHate:[String]
    
}
