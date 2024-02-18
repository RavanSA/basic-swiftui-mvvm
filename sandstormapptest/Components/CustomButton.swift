//
//  Button.swift
//  sandstormtestapp
//
//  Created by Revan SADIGLI on 18.02.2024.
//

import SwiftUI

struct CustomButton: View {
    
    let text: String
    @Binding var isDisabled: Bool
    let action: () -> Void
    
    var body: some View {
        Button(action: {
            self.action()
        }) {
            Text(text)
                .frame(height: 56)
                .frame(maxWidth: .infinity)
                .foregroundColor(.white)
                .background(
                    RoundedRectangle(cornerRadius: 18)
                        .stroke(Color.indigo, lineWidth: 3)
                        .background(Color.blue)
                )
                .cornerRadius(18)
                .font(.system(size: 20))

        }
        .if(isDisabled) { view in
               view.overlay(
                    Color.gray.opacity(0.5)
                        .cornerRadius(10)
                )
        }
        .padding(20)
        .disabled(isDisabled)
        
    }
}

#Preview {
    CustomButton(text: "Lock", isDisabled: .constant(true), action: {})
}
