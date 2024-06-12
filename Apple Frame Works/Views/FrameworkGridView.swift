//
//  FrameworkGridView.swift
//  Apple Frame Works
//
//  Created by Amritanshu Dash on 30/05/24.
//

import SwiftUI

struct FrameworkGridView: View {
    
    // same as state
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        
        NavigationView {
            
            ScrollView {
                
                LazyVGrid(columns: viewModel.columns) {
                    
                    ForEach(MockData.frameworks) { 
                        framework in FrameworkTitleView(Framework: framework).onTapGesture {
                                viewModel.selectedFramework = framework
                        }
                    }
                    
                }
                
            }
            .navigationTitle("Apple Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailedView, content: {
                FrameworkDetailView(viewModel: FrameworkDetailViewModel(Framework: viewModel.selectedFramework!, isShowingDeailedView: $viewModel.isShowingDetailedView, isShowingSafariView: false))
                }
            )
            
        }
        
    }
    
}

#Preview {
    FrameworkGridView()
}

