//
//  Appetizer.swift
//  AppetizersApp
//
//  Created by luna.henseler on 28/1/25.
//

import Foundation

struct Appetizer: Decodable, Identifiable {   //Decodable receives the info from the json from the server
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct MockData {
    
    static let sampleAppetizer = Appetizer(id: 001,
                                           name: "Test Appetizer",
                                           description: "Yummy",
                                           price: 9.99,
                                           imageURL: "",
                                           calories: 99,
                                           protein: 32,
                                           carbs: 65)
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer]
    
    
    
    static let orderItemOne = Appetizer(id: 0001,
                                        name: "Test Appetizer 1",
                                        description: "Yummy",
                                        price: 9.99,
                                        imageURL: "",
                                        calories: 99,
                                        protein: 32,
                                        carbs: 65)
    
    static let orderItemTwo = Appetizer(id: 0002,
                                        name: "Test Appetizer 2",
                                        description: "Yummy",
                                        price: 9.99,
                                        imageURL: "",
                                        calories: 99,
                                        protein: 32,
                                        carbs: 65)
    
    static let orderItemThree = Appetizer(id: 0003,
                                          name: "Test Appetizer 3",
                                          description: "Yummy",
                                          price: 9.99,
                                          imageURL: "",
                                          calories: 99,
                                          protein: 32,
                                          carbs: 65)
    
    static let orderItems = [orderItemOne, orderItemTwo, orderItemThree]
}
