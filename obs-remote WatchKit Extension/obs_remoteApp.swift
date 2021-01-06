//
//  obs_remoteApp.swift
//  obs-remote WatchKit Extension
//
//  Created by Dg on 06.01.2021.
//

import SwiftUI

@main
struct obs_remoteApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
