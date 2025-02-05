//
//  Alert.swift
//  AppetizersApp
//
//  Created by luna.henseler on 29/1/25.
//

import SwiftUI

struct AlertItem : Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    //MARK: - Network Alerts
    static let invalidData = AlertItem(title: Text("Server error"),
                                       message: Text("The data received from the server was invalid"),
                                       dismissButton: .default(Text("Ok")))
    
    static let invalidResponse = AlertItem(title: Text("Server error"),
                                           message: Text("Invalid response from the server"),
                                           dismissButton: .default(Text("Ok")))
    static let invalidURL = AlertItem(title: Text("Server error"),
                                      message: Text("There was an issue connecting to the server"),
                                      dismissButton: .default(Text("Ok")))
    static let unableToComplete = AlertItem(title: Text("Server error"),
                                            message: Text("Unable to complete your request at this time"),
                                            dismissButton: .default(Text("Ok")))
    
    
    //MARK: - Account Alerts
    static let invalidForm = AlertItem(title: Text("Invalid Form"),
                                            message: Text("All the fields in the form have to be filled out"),
                                            dismissButton: .default(Text("Ok")))
    
    static let invalidEmail = AlertItem(title: Text("Invalid Email"),
                                            message: Text("Ensure that the email is correct"),
                                            dismissButton: .default(Text("Ok")))
    
    static let userSaveSuccess = AlertItem(title: Text("Profile Saved"),
                                            message: Text("Information correctly saved"),
                                            dismissButton: .default(Text("Ok")))
    
    static let invalidUserData = AlertItem(title: Text("Profile Saved"),
                                            message: Text("There was an error saving or retrieving your profile"),
                                            dismissButton: .default(Text("Ok")))
    
}
