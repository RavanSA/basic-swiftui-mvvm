//
//  MainScreen.swift
//  sandstormtestapp
//
//  Created by Revan SADIGLI on 18.02.2024.
//

import SwiftUI

struct MainScreen: View {
    @ObservedObject var viewModel: MainScreenViewModel
    private let imageHeight: CGFloat
    
    init(viewModel: MainScreenViewModel) {
        self.viewModel = viewModel
        self.imageHeight = viewModel.calculateScreenHeight()
    }
       
    var body: some View {
        VStack {
            if viewModel.readyToNavigateDetailScreen {
                detailScreen
            } else {
                imageView
                buttonsView
                Spacer()
                openFullButton
            }
        }
        .padding(.horizontal, 20)
        .background(Color(hex: 0x8d8d92))
    }
    
    private var imageView: some View {
        Image("panda")
            .resizable()
            .scaledToFill()
            .frame(width: 150, height: imageHeight, alignment: .leading)
            .clipped()
    }
    
    private var buttonsView: some View {
        HStack(spacing: 20) {
            CustomButton(text: viewModel.isOpenFromTopBtnLocked ?  "Unlock" : "Lock", isDisabled: .constant(false), action: viewModel.toggleLock)
            CustomButton(text: "Open from top", isDisabled: $viewModel.isOpenFromTopBtnLocked, action: viewModel.openFromTop)
        }
    }
    
    private var openFullButton: some View {
        CustomButton(text: "Open Full", isDisabled: $viewModel.isOpenFromTopBtnLocked, action: viewModel.openFull)
    }
    
    private var detailScreen: some View {
        DetailScreen(showTheScreen: $viewModel.readyToNavigateDetailScreen)
            .if(viewModel.animateState == .topToBottom) { view in
                view.transition(.move(edge: .top))
            }
    }
    
}

#Preview {
    MainScreen(viewModel: MainScreenViewModel())
}

enum ScreenAnimationType {
    case topToBottom
    case none
}
