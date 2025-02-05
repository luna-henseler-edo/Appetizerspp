//
//  APButton.swift
//  AppetizersApp
//
//  Created by luna.henseler on 30/1/25.
//

import SwiftUI

struct APButton: View {
    let title: LocalizedStringKey
    
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50)
            .foregroundColor(.white)
            .background(Color(.brandPrimary))
            .cornerRadius(10)
    }
}

