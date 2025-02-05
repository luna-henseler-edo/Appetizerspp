//
//  User.swift
//  AppetizersApp
//
//  Created by luna.henseler on 30/1/25.
//

import Foundation

struct User: Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthDate = Date()
    var extraNapkins = false
    var frequentRefills = false
}
