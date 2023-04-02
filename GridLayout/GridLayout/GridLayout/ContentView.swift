//
//  ContentView.swift
//  GridLayout
//
//  Created by 山本響 on 2023/04/02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            LazyVGrid(columns:Array(repeating: .init(.flexible()), count: 4), spacing: 16) {
                ForEach(0 ..< 12) { item in
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.blue)
                        .frame(height: 100)
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
