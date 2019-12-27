//
//  ContentView.swift
//  AppleFeedback-TransitionLeaveOverList
//
//  Created by Noah Gilmore on 12/26/19.
//  Copyright © 2019 Noah Gilmore. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var isShowingCover: Bool = false

    var body: some View {
        ZStack {
            List(["a", "b", "c"], id: \.self) { item in
                Text("")
            }
            if self.isShowingCover {
                Color.red
                .transition(.asymmetric(insertion: .move(edge: .bottom), removal: .move(edge: .leading)))
                .animation(.easeInOut(duration: 2))
            }
            Button(action: {
                self.isShowingCover.toggle()
            }) {
                Text("Toggle")
                    .padding(20)
                    .foregroundColor(Color(UIColor.label))
                    .background(RoundedRectangle(cornerRadius: 6).fill(Color.blue))
            }
        }
    }
}
