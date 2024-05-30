//
//  FrameworkGridView.swift
//  Apple Frame Works
//
//  Created by Amritanshu Dash on 30/05/24.
//

import SwiftUI

struct FrameworkGridView: View {
    
    let columns: [GridItem] = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        
        NavigationView {
            
            ScrollView{
                
                LazyVGrid(columns: columns) {
                    
                    ForEach(MockData.frameworks) { framework in
                        
                        FrameworkTitleView(Framework: framework)
                    }
                }
            }
            .navigationTitle("Apple Frameworks")
        }
    }
}

#Preview {
    FrameworkGridView()
}

