//
//  DetailScreen.swift
//  sandstormtestapp
//
//  Created by Revan SADIGLI on 18.02.2024.
//

import SwiftUI

struct DetailScreen: View {
    
    @Binding var showTheScreen: Bool
    
    var body: some View {
        ZStack {
            Image("panda")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight, alignment: .leading)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Button(action: {
                    withAnimation {
                        showTheScreen = false
                    }
                }) {
                    Image(systemName: "xmark")
                        .resizable()
                        .frame(width: 16, height: 16)
                        .foregroundColor(.white)
                        .padding(8)
                        .background(Color.gray)
                        .clipShape(Circle())
                }
                .padding(EdgeInsets(top: 40, leading: 0, bottom: 0, trailing: 20))
                .frame(maxWidth: .infinity, alignment: .topTrailing)
                Spacer()
            }
            
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    DetailScreen(showTheScreen: .constant(false))
}
