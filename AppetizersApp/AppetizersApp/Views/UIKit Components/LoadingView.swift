//
//  LoadingView.swift
//  AppetizersApp
//
//  Created by luna.henseler on 29/1/25.
//

import SwiftUI

struct ActivityIndicator: UIViewRepresentable {
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let activityIndicatorView = UIActivityIndicatorView(style: .large)
        activityIndicatorView.color = .brandPrimary
        activityIndicatorView.startAnimating()
        return activityIndicatorView
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
        
    }
    
}

struct LoadingView: View {
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea(.all)
            
            ProgressView()
                .progressViewStyle(
                    CircularProgressViewStyle(tint: .brandPrimary))
                .scaleEffect(2)
        }
    }
}


#Preview {
    ActivityIndicator()
}
