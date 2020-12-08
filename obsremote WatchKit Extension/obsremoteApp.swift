//
//  obsremoteApp.swift
//  obsremote WatchKit Extension
//
//  Created by Dg on 08.12.2020.
//

import SwiftUI

@main
struct obsremoteApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
