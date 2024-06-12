//
//  FrameworkDetailView.swift
//  Apple Frame Works
//
//  Created by Amritanshu Dash on 30/05/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    //as we did not passed any value here so any time we create a view for framework detail view we have to pass the parameters of view model that creates a model at that time so thats why .. .. .
    @ObservedObject var viewModel: FrameworkDetailViewModel
    
    var body: some View {
        
        VStack {
            
            HStack{
                Spacer()
                Button{
                    // wrappedValue is the long way of doing it .. ..as @Binding is not in thaat except Binding<Bool> is there
                    viewModel.isShowingDeailedView.wrappedValue = false
                }label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))// white in dark mode and vis-a-vi
                        .imageScale(.large)
                        .frame(width: 50, height: 50)
                        
                }
            }.padding()
            
          
            Spacer()
            FrameworkTitleView(Framework: viewModel.Framework)
            Text(viewModel.Framework.description)
                .padding()
                .font(.body)
            Spacer()
            //This thing dierectly opens safari app and not in app safari view
            Link( destination: URL(string: viewModel.Framework.urlString) ?? URL(string: "www.apple.com")!,
                  label: {
                    Text("Learn More")
                        .font(.title)
                        .fontWeight(.semibold)
                        .frame(width: 200, height: 50)
                        .background(.pink)
                        .foregroundStyle(.mint)
                        .cornerRadius(23.0)
                })
//            Button{
//                viewModel.isShowingSafariView = true
//            }label: {
//                Text("Learn More")
//                    .font(.title)
//                    .fontWeight(.semibold)
//                    .frame(width: 200, height: 50)
//                    .background(.pink)
//                    .foregroundStyle(.mint)
//                    .cornerRadius(23.0)
//            }
            
        }
//        .fullScreenCover(isPresented: $viewModel.isShowingSafariView, content: {
//            SafariView(url: URL(string: viewModel.Framework.urlString) ?? URL(string: "www.apple.com")!)
//        })
        
    }
}

#Preview {
    FrameworkDetailView(viewModel: FrameworkDetailViewModel(Framework: MockData.sampleFramework, isShowingDeailedView: .constant(false), isShowingSafariView: true))
}
