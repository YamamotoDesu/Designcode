//
//  ContentView.swift
//  TransformAnimations
//
//  Created by 山本響 on 2023/03/10.
//

import SwiftUI

struct ContentView: View {
    @State var show = false
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 30)
                .frame(width: 260, height: 200)
                .offset(y: 20)
            RoundedRectangle(cornerRadius: 30)
                .frame(width: 300, height: 200)
                .foregroundColor(Color.purple)
                .offset(y: show ? -200 : 0)
                .scaleEffect(show ? 1.2 : 1)
                .rotationEffect(Angle(degrees: show ? 30 : 0))
                .rotation3DEffect(
                    Angle(degrees: show ? 30 : 0),
                    axis: (x: 1, y: 0, z: 0),
                    anchor: .center,
                    anchorZ: 0.0,
                    perspective: 1
                )
                .onTapGesture {
                    withAnimation {
                        show.toggle()
                    }
                   
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
