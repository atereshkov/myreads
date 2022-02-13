import SwiftUI
import Combine

public class RootViewModel: ObservableObject {

    @Published var isAuthorized: Bool = true

    private var subscriptions: Set<AnyCancellable> = []

    public init() {
//        appEnv.appState.map(\.auth.isAuthorized)
//            .removeDuplicates()
//            .assign(to: \.isAuthorized, on: self)
//            .store(in: &subscriptions)
    }

}
