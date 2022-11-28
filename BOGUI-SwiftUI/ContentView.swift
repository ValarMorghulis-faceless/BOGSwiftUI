//
//  ContentView.swift
//  BOGUI-SwiftUI
//
//  Created by Giorgi Samkharadze on 13.11.22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var appState: AppStateManager
    var body: some View {
        ZStack {
            Color(.systemGray6)
                .opacity(0.35)
                .edgesIgnoringSafeArea(.vertical)
            
            VStack (){
                
                
                Spacer()
                
                HStack(spacing:-10) {
                    
                    TabBarButtonView(type: .home, text: .home)
                    
                    TabBarButtonView(type: .cards, text: .cards)
                    
                    TabBarButtonView(type: .money, text: .money)
                    
                    TabBarButtonView(type: .extraction, text: .extraction)
                    
                    TabBarButtonView(type: .more, text: .more)
                 
                    
                }
                .frame(height: 80)
                .padding()


            }
            .edgesIgnoringSafeArea(.vertical)
        }

        
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(AppStateManager())
    }
}
