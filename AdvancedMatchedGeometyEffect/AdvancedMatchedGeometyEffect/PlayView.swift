//
//  PlayView.swift
//  AdvancedMatchedGeometyEffect
//
//  Created by 山本響 on 2023/03/24.
//

import SwiftUI

struct PlayView: View {
    var namespace: Namespace.ID
    
    var body: some View {
        VStack(spacing: 20) {
            RoundedRectangle(cornerRadius: 30)
                .matchedGeometryEffect(id: "shape", in: namespace)
                .frame(height: 300)
                .padding()
            Text("Fever")
                .matchedGeometryEffect(id: "text", in: namespace)
            HStack {
                Image(systemName: "play.fill")
                    .matchedGeometryEffect(id: "play", in: namespace)
                    .font(.title)
                Image(systemName: "forward.fill")
                    .matchedGeometryEffect(id: "forward", in: namespace)
                    .font(.title)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            RoundedRectangle(cornerRadius: 30)
                .fill(Color.accentColor)
                .matchedGeometryEffect(id: "background", in: namespace)
        )
        .ignoresSafeArea()
    }
}

struct PlayView_Previews: PreviewProvider {
    @Namespace static var namespace
    
    static var previews: some View {
        PlayView(namespace: namespace)
    }
}
