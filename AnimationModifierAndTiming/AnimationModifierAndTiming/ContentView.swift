//
//  ContentView.swift
//  AnimationModifierAndTiming
//
//  Created by 山本響 on 2023/03/10.
//

import SwiftUI

struct ContentView: View {
    @State var show = false
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
                .opacity(show ? 0.5 : 0.2)
                .animation(.linear(duration: 0.8))
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.white)
                .frame(height: 300)
                .opacity(show ? 1.0 : 0.5)
                .padding(show ? 16 : 32)
                .offset(y: show ? 0 : 30)
                .animation(.spring(response: 0.4, dampingFraction: 0.4))
            RoundedRectangle(cornerRadius: 20)
                .offset(y: show ? 600 : 0)
                .foregroundColor(.white)
                .frame(height: 300)
                .shadow(radius: 40)
                .padding(32)
                .animation(.timingCurve(0.2, 0.8, 0.2, 1, duration: 0.8))
            
        }
        .onTapGesture {
            show.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
