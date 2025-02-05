//
//  AppetizersAppApp.swift
//  AppetizersApp
//
//  Created by luna.henseler on 27/1/25.
//

import SwiftUI

@main
struct AppetizersAppApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
}


