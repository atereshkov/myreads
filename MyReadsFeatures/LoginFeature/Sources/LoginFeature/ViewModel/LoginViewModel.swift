import SwiftUI
import Combine

public class LoginViewModel: ObservableObject {

    @Published var routingState: LoginRouting

    private let onAuth: () -> Void

    public init(onAuth: @escaping () -> Void) {
        self.onAuth = onAuth
        self.routingState = LoginRouting()
    }

    // MARK: - Input

    @Published var email: String?
    @Published var password: String?

    // MARK: - Output

    @Published var state: LoginViewState = .start

}

extension LoginViewModel {

    func signInAction() {
//        guard let email = email?.trim(), let pw = password?.trim() else { return }
//        guard !email.isEmpty, !pw.isEmpty else { return }
//
//        state = .loading
//
//        authService
//            .signIn(email: email, password: pw)
//            .receive(on: DispatchQueue.main)
//            .sink(receiveCompletion: { [weak self] completion in
//                switch completion {
//                case .failure(let error):
//                    self?.state = .loginFailed(error: error.localizedDescription)
//                    self?.routingState.showErrorAlert = true
//                case .finished:
//                    break
//                }
//            }, receiveValue: { _ in })
//            .store(in: cancelBag)

        onAuth()
    }

}
