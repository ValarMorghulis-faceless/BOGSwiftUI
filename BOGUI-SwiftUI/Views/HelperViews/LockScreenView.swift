//
//  LockScreenView.swift
//  BOGUI-SwiftUI
//
//  Created by Giorgi Samkharadze on 27.11.22.
//

import SwiftUI

struct LockScreenView: View {
    var body: some View {
        LazyVStack {
        VStack {
            
            
            HStack(spacing: 120) {
                
                HStack {
                    Image(systemName: "person")
                        
                        .frame(width:30, height: 30, alignment: .center)
                        .cornerRadius(15)
                        .padding()
                    
                    VStack(alignment: .leading) {
                        Text("User")
                            
                        Text("ValarDohaeris")
                            .frame(width: 120, alignment: .leading)
                    }
                }
            
                Text("Change")
                    .frame(width: 100, height:40, alignment: .center)
                    .background(Color(#colorLiteral(red: 0.9568627477, green: 0.9568627477, blue: 0.9568627477, alpha: 1)))
                    .cornerRadius(20)
                
            }
            
            Image(systemName: "lock")
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40, alignment: .center)
                .foregroundColor(Color(#colorLiteral(red: 0.9917085767, green: 0.4014373124, blue: 0.1002244577, alpha: 1)))
            
            Text("Fill in mobilebank passcode")
                .font(.system(size: 15).monospaced())
                .padding()
            
            HStack {
                Image(systemName: "circle.fill")
                    .foregroundColor(.gray)
                Image(systemName: "circle.fill")
                    .foregroundColor(.gray)
                Image(systemName: "circle.fill")
                    .foregroundColor(.gray)
                Image(systemName: "circle.fill")
                    .foregroundColor(.gray)
            }
            .padding()
            
            
            VStack(spacing:35) {
                HStack(spacing: 90) {
                    Button(action: {
                        
                    }, label: {
                        NumberButton(number: "1")
                    
                    })
                    Button(action: {
                        
                    }, label: {
                        NumberButton(number: "2")
                    })
                    Button(action: {
                        
                    }, label: {
                        NumberButton(number: "3")
                        
                    })
                }
                HStack(spacing: 90) {
                    Button(action: {
                        
                    }, label: {
                        NumberButton(number: "4")
                    
                    })
                    Button(action: {
                        
                    }, label: {
                        NumberButton(number: "5")
                    })
                    Button(action: {
                        
                    }, label: {
                        NumberButton(number: "6")
                        
                    })
                }
                HStack(spacing: 90) {
                    Button(action: {
                        
                    }, label: {
                        NumberButton(number: "7")
                    
                    })
                    Button(action: {
                        
                    }, label: {
                        NumberButton(number: "8")
                    })
                    Button(action: {
                        
                    }, label: {
                        NumberButton(number: "9")
                        
                    })
                }
                
                HStack(spacing: 90) {
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "faceid")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25, height: 25, alignment: .center)
                            .tint(Color.black)
                    
                    })
                    Button(action: {
                        
                    }, label: {
                        NumberButton(number: "0")
                    })
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "delete.left")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25, height: 25, alignment: .center)
                            .tint(Color.black)
                        
                    })
                }
            }
 
            
            Button(action: {
                
            }, label: {
                Text("Forgot password?")
                    .frame(width: 400, height: 35, alignment: .center)
                    .background(Color(#colorLiteral(red: 0.9724155068, green: 0.9278865457, blue: 0.8984619975, alpha: 1)))
                    .tint(Color(#colorLiteral(red: 0.9917085767, green: 0.4014373124, blue: 0.1002244577, alpha: 1)))
                    .cornerRadius(20)
                    
            })
            .padding()
        }
        }
        .padding(20)
        .padding(.bottom, 40)
        .background(Color.white)
        .cornerRadius(25)
        
    }
}

struct LockScreenView_Previews: PreviewProvider {
    static var previews: some View {
        LockScreenView()
            .previewLayout(.sizeThatFits)
            
            
            
            
    }
}
