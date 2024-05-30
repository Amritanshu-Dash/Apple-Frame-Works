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
    
    let columns: [GridItem] = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        
        NavigationView {
            
            ScrollView{
                
                LazyVGrid(columns: columns) {
                    
                    ForEach(MockData.frameworks) { framework in
                        
                        FrameworkTitleView(Framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
            }
            .navigationTitle("Apple Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailedView, content: {
                FrameworkDetailView(Framework: viewModel.selectedFramework ?? MockData.sampleFramework,isShowingDeailedView: $viewModel.isShowingDetailedView )
            })
        }
    }
}

#Preview {
    FrameworkGridView()
}

