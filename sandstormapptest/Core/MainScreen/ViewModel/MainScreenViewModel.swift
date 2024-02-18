//
//  MainScreenViewModel.swift
//  sandstormtestapp
//
//  Created by Revan SADIGLI on 18.02.2024.
//

import SwiftUI

class MainScreenViewModel: ObservableObject {
    
    @Published var isOpenFromTopBtnLocked = false
    @Published var readyToNavigateDetailScreen = false
    @Published var animateState: ScreenAnimationType = .none
    
    func toggleLock() {
        withAnimation {
            isOpenFromTopBtnLocked.toggle()
        }
    }
    
    func openFromTop() {
        withAnimation {
            readyToNavigateDetailScreen = true
            animateState = .topToBottom
        }
    }
    
    func openFull() {
        readyToNavigateDetailScreen = true
        animateState = .none
    }
    
    func calculateScreenHeight() -> CGFloat {
        return UIScreen.screenHeight * 0.3
    }
    
}
