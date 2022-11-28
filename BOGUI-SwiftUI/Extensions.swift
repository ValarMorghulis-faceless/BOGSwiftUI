//
//  Extensions.swift
//  BOGUI-SwiftUI
//
//  Created by Giorgi Samkharadze on 29.11.22.
//

import Foundation
import SwiftUI


extension View {
    @ViewBuilder
    func `if`<Transform: View> (
        _ condition: Bool,
        transform: (Self) -> Transform) -> some View {
            if condition {
                transform(self)
            } else {
                self
            }
        }
}
extension Color {
    static let buttonColor = Color(#colorLiteral(red: 0.9917085767, green: 0.4014373124, blue: 0.1002244577, alpha: 1))
    
}
