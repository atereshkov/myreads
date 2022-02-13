import SwiftUI

import AppCore

@main
struct MyReadsApp: App {

    let environment = AppEnvironment.boot()

    var body: some Scene {
        WindowGroup {
            AppView(appState: environment.appState)
        }
    }

}
