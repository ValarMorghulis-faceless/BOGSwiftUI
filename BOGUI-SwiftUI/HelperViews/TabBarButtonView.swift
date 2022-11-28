//
//  TabBarButtonView.swift
//  BOGUI-SwiftUI
//
//  Created by Giorgi Samkharadze on 29.11.22.
//

import SwiftUI

enum TabBarButtonType: String {
    case home = "house.fill"
    case cards = "creditcard"
    case extraction = "newspaper"
    case more = "ellipsis.circle"
    case money = "dollarsign.circle"
}

enum TabBarButtonText: String {
    case home = "Home"
    case cards = "Cards"
    case extraction = "Extraction"
    case more = "More"
    case money = ""
}


struct TabBarButtonView: View {
    var type : TabBarButtonType
    var text : TabBarButtonText
    @EnvironmentObject var appState: AppStateManager
    var body: some View {
        Button(action: {
            appState.selectedTab = type
        }, label: {
            TabBarButton(buttonText: text.rawValue, imageName: type.rawValue, isActive: appState.selectedTab == type)
                .tint(appState.selectedTab == type ? .buttonColor : Color.gray.opacity(0.5) )
                
                
        })
    }
}

struct TabBarButtonView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarButtonView(type: .home, text: .home)
    }
}
