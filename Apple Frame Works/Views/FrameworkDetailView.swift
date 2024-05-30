//
//  FrameworkDetailView.swift
//  Apple Frame Works
//
//  Created by Amritanshu Dash on 30/05/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var Framework:Framework
    @Binding var isShowingDeailedView: Bool
    @State private var isShowingSafariView: Bool = false
    
    var body: some View {
        
        VStack {
            
            HStack{
                Spacer()
                Button{
                    isShowingDeailedView = false
                }label: {
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
                isShowingSafariView = true
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
        .fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: Framework.urlString) ?? URL(string: "www.apple.com")!)
        })
        
    }
}

#Preview {
    FrameworkDetailView(Framework: MockData.sampleFramework, isShowingDeailedView: .constant(false))
}
