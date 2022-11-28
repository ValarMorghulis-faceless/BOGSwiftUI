//
//  TabBarView.swift
//  BOGUI-SwiftUI
//
//  Created by Giorgi Samkharadze on 27.11.22.
//

import SwiftUI

enum Tabs: Int {
    case home = 0
    case cards = 1
    case money = 2
    case extraction = 3
    case more = 4
}

struct TabBarView: View {
    
    @Binding var selectedTab: Tabs
    
    var body: some View {
        HStack(alignment: .center, spacing: 3) {
            
            Button(action: {
                selectedTab = .home
                
            }, label: {
                TabBarButton(buttonText: "Home", imageName: "house.fill", isActive: selectedTab == .home)
            })
            .tint(selectedTab == .home ? Color (#colorLiteral(red: 0.9917085767, green: 0.4014373124, blue: 0.1002244577, alpha: 1)):  Color(.secondaryLabel)  )
            
            Button(action: {
                selectedTab = .cards
            }, label: {
                TabBarButton(buttonText: "Cards", imageName: "creditcard", isActive: selectedTab == .cards)
            })
            .tint(selectedTab == .cards ? Color (#colorLiteral(red: 0.9917085767, green: 0.4014373124, blue: 0.1002244577, alpha: 1)):  Color(.secondaryLabel)  )
            Button(action: {
                selectedTab = .money
            }, label: {
                GeometryReader { geo in
                
                               
                
                                VStack(alignment: .center, spacing: 4) {
                                    Image(systemName: "dollarsign.circle")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 35, height: 35, alignment: .center)
                                        .padding(.bottom)
                
                
                                   
                                }
                                .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
                
                                }
            })
            .tint(selectedTab == .money ? Color (#colorLiteral(red: 0.9917085767, green: 0.4014373124, blue: 0.1002244577, alpha: 1)):  Color(.secondaryLabel)  )
            
            Button(action: {
                selectedTab = .extraction
            }, label: {
                TabBarButton(buttonText: "Extraction", imageName: "newspaper", isActive: selectedTab == .extraction)
            })
            .tint(selectedTab == .extraction ? Color (#colorLiteral(red: 0.9917085767, green: 0.4014373124, blue: 0.1002244577, alpha: 1)):  Color(.secondaryLabel)  )
            Button(action: {
                selectedTab = .more
            }, label: {
                TabBarButton(buttonText: "More", imageName: "ellipsis.circle", isActive: selectedTab == .more)
            })
            .tint(selectedTab == .more ? Color (#colorLiteral(red: 0.9917085767, green: 0.4014373124, blue: 0.1002244577, alpha: 1)):  Color(.secondaryLabel)  )
        
        }
        .frame(height: 60)
        .background(Color.white)
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView(selectedTab: .constant(.home))
    }
}
