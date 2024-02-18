//
//  DetailScreenViewModel.swift
//  sandstormapptest
//
//  Created by Revan SADIGLI on 18.02.2024.
//

import SwiftUI

class DetailScreenViewModel: ObservableObject {
    @Published var showTheScreen = false
    
    func dismiss() {
        withAnimation {
            showTheScreen = false
        }
    }
}
