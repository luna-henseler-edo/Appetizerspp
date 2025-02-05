//
//  AppetizerListView.swift
//  AppetizersApp
//
//  Created by luna.henseler on 27/1/25.
//

import SwiftUI

struct AppetizerListView: View {
    
    @StateObject var viewModel = AppetizerListViewModel()

    
    var body: some View {
        ZStack {
            NavigationView {
                List(viewModel.appetizers){ appetizer in
                    AppetizerListCell(appetizer: appetizer)
                        .listRowSeparator(.hidden)
                        //.listRowSeparatorTint(.brandPrimary)
                        .onTapGesture {
                            viewModel.selectedAppetizer = appetizer
                            viewModel.isShowingDetail = true
                        }
                }
                .navigationTitle(Text("🍟 Appetizers "))
                .listStyle(.plain)
                .disabled(viewModel.isShowingDetail)
            }
            .task {
                viewModel.getAppetizers()
            }
            .blur(radius: viewModel.isShowingDetail ? 20 : 0)
            
            if(viewModel.isShowingDetail){
                AppetizerDetailView(
                    appetizer: viewModel.selectedAppetizer!,
                    isShowingDetail: $viewModel.isShowingDetail
                )
            }
            
            
            if viewModel.isLoading {
                LoadingView()
            }
            }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
        }
    }
}


#Preview {
    AppetizerListView()
}



