//
//  ContentView.swift
//  ViewTransitionsAndAnimations
//
//  Created by 山本響 on 2023/03/09.
//

import SwiftUI

struct ContentView: View {
    @State var show = false

    var body: some View {
        ZStack {
            Text("View Transaction")
                .padding()
                .background(Capsule().stroke())
            if show {
                RoundedRectangle(cornerRadius: 30)
                    .fill(Color.blue)
                    .padding()
                    .transition(.scale(scale: 0.1, anchor: .bottomTrailing))
                    .zIndex(1)
            }
        }
        .onTapGesture {
            withAnimation(.spring()) {
                show.toggle()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
