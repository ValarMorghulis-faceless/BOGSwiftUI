//
//  ContentView.swift
//  BOGUI-SwiftUI
//
//  Created by Giorgi Samkharadze on 13.11.22.
//

import SwiftUI

struct ContentView: View {
    @State var selectedTab: Tabs = .home
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.7436779737, green: 0.8341741562, blue: 0.8498521447, alpha: 1))
                .ignoresSafeArea()
            
            
            Image("bogLogo")
                .resizable()
                .scaledToFit()
         
            
            VStack(spacing: -40){
                HStack(spacing: 250) {
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "qrcode")
                            .frame(width: 40, height: 40, alignment: .center)
                            .foregroundColor(.white)
                            .background(Color(#colorLiteral(red: 0.7201110721, green: 0.8106400967, blue: 0.8220303655, alpha: 1)))
                            .cornerRadius(20)
                        
                        
                    })
                    HStack{
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "textformat.abc.dottedunderline")
                                .frame(width: 40, height: 40, alignment: .center)
                                .foregroundColor(.white)
                                .background(Color(#colorLiteral(red: 0.7201110721, green: 0.8106400967, blue: 0.8220303655, alpha: 1)))
                                .cornerRadius(20)
                            
                        })
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "phone.bubble.left")
                                .frame(width: 40, height: 40, alignment: .center)
                                .foregroundColor(.white)
                                .background(Color(#colorLiteral(red: 0.7201110721, green: 0.8106400967, blue: 0.8220303655, alpha: 1)))
                                .cornerRadius(20)
                            
                        })
                    }
                    
                    
                }
                
                Image("bogLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50, alignment: .center)
                    .padding(.top,100)
                
                Spacer()
                LockScreenView()
                TabBarView(selectedTab: $selectedTab)
            }
        }
        
        
     
        
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
