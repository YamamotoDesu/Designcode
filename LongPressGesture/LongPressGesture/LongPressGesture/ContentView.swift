//
//  ContentView.swift
//  LongPressGesture
//
//  Created by 山本響 on 2023/03/18.
//

import SwiftUI

struct ContentView: View {
    @GestureState var press = false
    @State var show = false
    
    var body: some View {
        Image(systemName: "camera.fill")
            .foregroundColor(.white)
            .frame(width: 60, height: 60)
            .background(show ? Color.black : Color.blue)
            .mask(Circle())
            .scaleEffect(press ? 2 : 1)
            .animation(.spring())
            .gesture(
                LongPressGesture(minimumDuration: 0.6).updating($press) { currentState, gestureState, transaction in
                    gestureState = currentState
                }.onEnded { value in
                    show.toggle()
                }
            )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
