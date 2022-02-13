import SwiftUI
import Combine

import AppState

public class WelcomeViewModel: ObservableObject {

//    @Published var routingState: LoginRouting

    private let appState: Store<AppState>

    public init(appState: Store<AppState>) {
        self.appState = appState
//        self.routingState = LoginRouting()
    }

    // MARK: - Input

    // MARK: - Output

//    @Published var state: LoginViewState = .start

}

extension WelcomeViewModel {

    func signInAction() {
        // Replace with delegate/closure/callback?
        appState[\.auth.isAuthorized] = true
    }

}
