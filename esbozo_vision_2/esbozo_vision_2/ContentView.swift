//
//  ContentView.swift
//  esbozo_vision_2
//
//  Created by Jadzia Gallegos on 07/10/24.
//

import SwiftUI
import RealityKit

struct ContentView: View {

    var body: some View {
        VStack {
            ToggleImmersiveSpaceButton()
        }
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
        .environment(AppModel())
}
