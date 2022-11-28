//
//  NumberButton.swift
//  BOGUI-SwiftUI
//
//  Created by Giorgi Samkharadze on 27.11.22.
//

import SwiftUI

struct NumberButton: View {
    var number: String
    var body: some View {
        Button(action: {
            
        }, label: {
            Text(number)
                .frame(width: 25, height: 25, alignment: .center)
                .font(.system(size: 25))
                .cornerRadius(12)
                .tint(.black)
            
        })
    }
}

struct NumberButton_Previews: PreviewProvider {
    static var previews: some View {
        NumberButton(number: "0")
    }
}
