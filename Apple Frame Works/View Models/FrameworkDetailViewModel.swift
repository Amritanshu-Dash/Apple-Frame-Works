//
//  FrameworkDetailViewModel.swift
//  Apple Frame Works
//
//  Created by Amritanshu Dash on 12/06/24.
//

import SwiftUI

final class FrameworkDetailViewModel: ObservableObject {
    
    var Framework:Framework
    var isShowingDeailedView: Binding<Bool>
    @Published var isShowingSafariView: Bool = false
    
    init(Framework: Framework, isShowingDeailedView: Binding<Bool>, isShowingSafariView: Bool) {
        self.Framework = Framework
        self.isShowingDeailedView = isShowingDeailedView
        self.isShowingSafariView = isShowingSafariView
    }
}
