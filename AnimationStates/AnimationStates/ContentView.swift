//
//  ContentView.swift
//  AnimationStates
//
//  Created by 山本響 on 2023/03/03.
//

import SwiftUI

struct ContentView: View {
    @State var show = false
    
    var body: some View {
        VStack {
            Text("Hello, world!")
                .bold()
                .foregroundColor(.white)
        }
        .frame(width: show ? 320 : 300, height: show ? 600 : 44)
        .background(Color.purple)
        .cornerRadius(30)
        .shadow(color: Color.purple.opacity(0.5), radius: 20)
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
