//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Changhao Li on 2021/12/6.
//

import SwiftUI

@main
struct LandmarksApp: App {
    // Use the @StateObject attribute to initialize a model object for a given property only once during the life time of the app.
    @StateObject private var modelData = ModelData()

    var body: some Scene {
        let mainWindow = WindowGroup {
            ContentView()
                // The environmentObject(_:) modifier.
                // You apply this modifier so that views further down in the view hierarchy can read data objects passed down through the environment.
                .environmentObject(modelData)
        }

        #if os(macOS)
        mainWindow
            .commands {
                LandmarkCommands()
            }
        #else
        mainWindow
        #endif

        #if os(watchOS)
        WKNotificationScene(controller: NotificationController.self, category: "LandmarkNear")
        #endif

        #if os(macOS)
        Settings {
            LandmarkSettings()
        }
        #endif
    }
}
