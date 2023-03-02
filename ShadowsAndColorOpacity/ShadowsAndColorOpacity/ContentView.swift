//
//  ContentView.swift
//  ShadowsAndColorOpacity
//
//  Created by 山本響 on 2023/03/02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("App of the day")
                .font(.title).bold()
                .foregroundColor(.white)
                .shadow(radius: 10)
        }
        .frame(width: 300, height: 400)
        .background(Color.pink)
        .cornerRadius(20)
        .shadow(color: Color.pink.opacity(0.3), radius: 20, x: 0.0, y: 10.0)
        .shadow(color: Color.pink.opacity(0.2), radius: 5, x: 0.0, y: 2.0)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
