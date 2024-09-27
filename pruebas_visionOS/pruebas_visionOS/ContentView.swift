//
//  ContentView.swift
//  pruebas_visionOS
//
//  Created by Jadzia Gallegos on 26/09/24.
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
