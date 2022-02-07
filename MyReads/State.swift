import SwiftUI
import Combine

struct AppState: Equatable {
    var auth = AuthState()
    var user = UserData()
    var data = DataState()
    var routing = ViewRouting()
    var system = System()
}

extension AppState {
    struct AuthState: Equatable {
        var isAuthorized: Bool = false
    }
}

extension AppState {
    struct UserData: Equatable {
        var id: String?
    }
}

extension AppState {
    struct DataState: Equatable {
        var books: [String] = []
    }
}

extension AppState {
    struct ViewRouting: Equatable {

    }
}

extension AppState {
    struct System: Equatable {
        var isActive: Bool = false
    }
}

func == (lhs: AppState, rhs: AppState) -> Bool {
    return lhs.auth == rhs.auth &&
        lhs.routing == rhs.routing &&
        lhs.system == rhs.system &&
        lhs.user == rhs.user
}
