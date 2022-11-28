//
//  HomeView.swift
//  BOGUI-SwiftUI
//
//  Created by Giorgi Samkharadze on 13.11.22.
//

import SwiftUI

struct HomeView: View {
    
    @State var selectedTab: Tabs = .home
    
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                
                TabBarView(selectedTab: $selectedTab)
            }
        }
        
     
        
    }
}


    

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .preferredColorScheme(.light)
    }
}
