//
//  ContentView.swift
//  sandstormtestapp
//
//  Created by Revan SADIGLI on 18.02.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            MainScreen(viewModel: MainScreenViewModel())
        }
    }
}

#Preview {
    ContentView()
}
