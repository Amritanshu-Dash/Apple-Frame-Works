//
//  FrameworkGridViewModel.swift
//  Apple Frame Works
//
//  Created by Amritanshu Dash on 30/05/24.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject{

    var selectedFramework: Framework? {
        didSet{
            isShowingDetailedView = true
        }
    }
    @Published var isShowingDetailedView = false
}

