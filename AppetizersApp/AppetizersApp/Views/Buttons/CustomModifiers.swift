//
//  CustomModifiers.swift
//  AppetizersApp
//
//  Created by luna.henseler on 3/2/25.
//

import SwiftUI

struct StandardButtonstyle: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .buttonStyle(.bordered)
            .tint(.brandPrimary)
            .controlSize(.large)
    }
}

extension View {
    func standarsButtonStyle() -> some View {
        self.modifier(StandardButtonstyle())
    }
}
