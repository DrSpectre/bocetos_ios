//
//  esbozo_vision_2App.swift
//  esbozo_vision_2
//
//  Created by Jadzia Gallegos on 07/10/24.
//

import SwiftUI

@main
struct esbozo_vision_2App: App {
    
    @State private var appModel = AppModel()
    @State private var avPlayerViewModel = AVPlayerViewModel()
    
    var body: some Scene {
        WindowGroup {
            if avPlayerViewModel.isPlaying {
                AVPlayerView(viewModel: avPlayerViewModel)
            } else {
                ContentView()
                    .environment(appModel)
            }
        }
        
        ImmersiveSpace(id: appModel.immersiveSpaceID) {
            ImmersiveView()
                .environment(appModel)
                .onAppear {
                    appModel.immersiveSpaceState = .open
                    avPlayerViewModel.play()
                }
                .onDisappear {
                    appModel.immersiveSpaceState = .closed
                    avPlayerViewModel.reset()
                }
        }
        .immersionStyle(selection: .constant(.full), in: .full)
    }
}
