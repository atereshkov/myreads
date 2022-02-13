import SwiftUI

import RootFeature
import WelcomeFeature
import LoginFeature
import RegistrationFeature
import MyBooksFeature
import BookDetailsFeature
import TabBarFeature

import AppState

public struct AppView: View {

    private let appState: Store<AppState>

    public init(appState: Store<AppState>) {
        self.appState = appState
    }

    public var body: some View {
        RootView(
            viewModel: RootViewModel(appState: appState),
            welcomeViewProvider: { welcomeView },
            tabBarViewProvider: { tabBarView }
        )
    }

    var welcomeView: some View {
        WelcomeView(
            viewModel: WelcomeViewModel(appState: appState),
            loginViewProvider: { loginView }
        )
    }

    var loginView: some View {
        LoginView(
            viewModel: LoginViewModel(onAuth: {
                appState[\.auth.isAuthorized] = true
            }),
            registrationViewProvider: { registrationView }
        )
    }

    var registrationView: some View {
        RegistrationView(viewModel: RegistrationViewModel())
    }

    var tabBarView: some View {
        TabBarView(providers: [
            homeTabProvider,
            myBooksTabProvider
        ])
    }

    var homeTabProvider: TabViewProvider {
        return .init(
            systemImageName: "house.fill",
            tabName: "Home"
        ) {
            return AnyView(Text("First Tab"))
        }
    }

    var myBooksTabProvider: TabViewProvider {
        return .init(
            systemImageName: "book.fill",
            tabName: "My Books"
        ) {
            return AnyView(MyBooksListView(
                viewModel: MyBooksViewModel(),
                bookDetailViewProvider: { id in bookDetail(id: id) }
            ))
        }
    }

    func bookDetail(id: String) -> some View {
        BookDetailsView(id: id)
    }

}
