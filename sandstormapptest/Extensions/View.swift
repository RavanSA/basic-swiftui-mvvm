//
//  View.swift
//  sandstormtestapp
//
//  Created by Revan SADIGLI on 18.02.2024.
//

import SwiftUI

extension View {
    
    @ViewBuilder
    func `if`<Content: View>(
        _ condition: @autoclosure () -> Bool,
        transform: (Self) -> Content
    ) -> some View {
        if condition() {
            transform(self)
        } else {
            self
        }
    }

    
}
