//
//  ContentView.swift
//  TextView
//
//  Created by 山本響 on 2023/02/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Get the details, frameworks, and tools you need to use system fonts for Apple platforms in your apps. These typefaces offer the control and flexibility to optimally display text at a variety of sizes, in many different languages, across multiple interfaces.")
            .font(.system(size: 20, weight: .bold, design: .serif))
            .foregroundColor(.blue)
            .frame(width: 300, alignment: .leading)
            .multilineTextAlignment(.center)
            .lineLimit(3)
            .lineSpacing(10.0)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
