//
//  ContentView.swift
//  SwiftUIPractice
//
//  Created by 김인섭 on 10/26/23.
//

import SwiftUI

struct ContentView: View {
    
    let viewModel = ContentViewModel()
    
    var body: some View {
        Text("Hello, @dynamicMemberLookup")
            .onAppear { viewModel.onAppear() }
    }
}

#Preview {
    ContentView()
}
