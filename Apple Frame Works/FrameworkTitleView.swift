//
//  FrameworkTitleView.swift
//  Apple Frame Works
//
//  Created by Amritanshu Dash on 30/05/24.
//

import SwiftUI

struct FrameworkTitleView: View {
    
    let Framework: Framework
    
    var body: some View {
        VStack{
            Image(Framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            
            Text(Framework.name)
                .font(.title2)
                .fontWeight(.bold)
                .scaledToFit()
                .minimumScaleFactor(0.5)
        }
    }
}
