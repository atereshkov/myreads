import AppState

public class AppBootstrap {

    public init() {
        
    }

    public func boot(with state: Store<AppState>) {
        state[\.auth.isAuthorized] = true
    }

}
