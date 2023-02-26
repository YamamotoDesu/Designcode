//
//  ContentView.swift
//  SafeArea
//
//  Created by 山本響 on 2023/02/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        Color.blue.ignoresSafeArea()
        ZStack {
            Color.blue.ignoresSafeArea(.all, edges: .all)
            
            VStack {
                Text("SwiftUI for iOS 14")
            }
            .frame(width: 300, height: 200)
            .background(Color.white)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
