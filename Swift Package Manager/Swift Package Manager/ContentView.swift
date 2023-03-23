//
//  ContentView.swift
//  Swift Package Manager
//
//  Created by 山本響 on 2023/03/24.
//

import SwiftUI
import SwiftUIX

struct ContentView: View {
    var body: some View {
        ZStack {
            Text("Hello, world!")
                .padding()
                .font(.largeTitle)
            
            VisualEffectBlurView(blurStyle: .systemMaterial)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
