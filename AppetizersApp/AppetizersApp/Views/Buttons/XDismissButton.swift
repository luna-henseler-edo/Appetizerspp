//
//  XDismissButton.swift
//  AppetizersApp
//
//  Created by luna.henseler on 30/1/25.
//

import SwiftUI

struct XDismissButton: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 30, height: 30)
                .foregroundColor(.white)
                .opacity(0.6)
            Image(systemName: "xmark")
                .imageScale(.small)
                .frame(width: 44, height: 44)
                .foregroundColor(.brandPrimary)
        }
    }
}

#Preview {
    XDismissButton()
}
