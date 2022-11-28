//
//  AppStateManager.swift
//  BOGUI-SwiftUI
//
//  Created by Giorgi Samkharadze on 29.11.22.
//

import Foundation


class AppStateManager: ObservableObject {
    @Published var selectedTab : TabBarButtonType = .home
    @Published var selectedText : TabBarButtonText = .home
}
