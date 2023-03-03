//
//  ContentView.swift
//  ClipShapeAndSmoothCorners
//
//  Created by 山本響 on 2023/03/03.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea()
            
            VStack {
                Text("SwiftUI for iOS 14")
                    .bold()
            }
            .frame(width: 300, height: 200)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
