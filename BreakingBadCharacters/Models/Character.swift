//
//  Character.swift
//  BreakingBadCharacters
//
//  Created by khaoula hafsia on 2/2/2021.
//

import Foundation

struct Character: Decodable, Encodable, Identifiable{
    var id: Int?
    var char_id: Int?
    var name: String
    var birthday: String
    var occupation: [String]
    var img: String
    var status: String
    var nickname: String
    var appearance: [Int]?
    var portrayed: String
    var category: String
    
}
//var characters = [Character.example,Character.example,Character.example]

let example = Character(id: 1, char_id: 1, name: "Walter White", birthday: "09-07-1958", occupation: ["High School Chemistry Teacher", "Meth King Pin"], img: "https://images.amcnetworks.com/amc.com/wp-content/uploads/2015/04/cast_bb_700x1000_walter-white-lg.jpg", status: "Presumed dead", nickname: "Heisenberg", appearance: [1,2,3,4,5], portrayed: "Bryan Cranston", category: "Breaking Bad")
