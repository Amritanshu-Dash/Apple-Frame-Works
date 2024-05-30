//
//  FrameworkDetailView.swift
//  Apple Frame Works
//
//  Created by Amritanshu Dash on 30/05/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var Framework:Framework
    
    var body: some View {
        
        VStack {
            
            HStack{
                Spacer()
                Button{}label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))// white in dark mode and vis-a-vi
                        .imageScale(.large)
                        .frame(width: 50, height: 50)
                        
                }
            }.padding()
            
          
            Spacer()
            FrameworkTitleView(Framework: Framework)
            Text(Framework.description)
                .padding()
                .font(.body)
            Spacer()
            Button{
                
            }label: {
                Text("Learn More")
                    .font(.title)
                    .fontWeight(.semibold)
                    .frame(width: 200, height: 50)
                    .background(.pink)
                    .foregroundStyle(.mint)
                    .cornerRadius(23.0)
            }
            
        }
        
    }
}

#Preview {
    FrameworkDetailView(Framework: MockData.sampleFramework)
}
