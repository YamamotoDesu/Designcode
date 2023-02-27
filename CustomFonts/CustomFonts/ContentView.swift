//
//  ContentView.swift
//  CustomFonts
//
//  Created by 山本響 on 2023/02/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("San Francisco")
                .font(.largeTitle).bold()
            Text("Open Sans")
                .font(.custom("OpenSans-Bold", size: 34))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
