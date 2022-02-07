import Foundation

struct AppEnvironment {
//    let session: SessionType
    let appState: Store<AppState>
}

extension AppEnvironment {

    static func boot() -> AppEnvironment {
//        FirebaseApp.configure()
//        let container = DIContainer()
//        let appState = Store<AppState>(AppState())
//        let session = Session(container: container, appState: appState)
//        return AppEnvironment(session: session, appState: appState)
        let appState = Store<AppState>(AppState())
        return AppEnvironment(appState: appState)
    }

}
