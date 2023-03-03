//
//  ContentView.swift
//  MaskAndTransparency
//
//  Created by 山本響 on 2023/03/03.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea()

            VStack {
                ForEach(0 ..< 5) { item in
                    Text("Mask and Transparency")
                        .font(.title3).bold()
                        .padding(.vertical)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Divider()
                }
            }
            .frame(height: 300, alignment: .top)
            .padding()
            .background(Color.white)
            ///.mask(Color.black.opacity(0.3))
            .mask(LinearGradient(gradient: Gradient(colors: [Color.red, Color.red, Color.blue.opacity(0.2)]), startPoint: .top, endPoint: .bottom))
            .cornerRadius(30)
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
