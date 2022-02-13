import SwiftUI

import RootFeature
import TabBarFeature
import WelcomeFeature
import LoginFeature
import MyBooksFeature
import BookDetailsFeature
import RegistrationFeature

@main
struct MyReadsApp: App {

    let environment = AppEnvironment.boot()

    var body: some Scene {
        WindowGroup {
            RootView(
                viewModel: RootViewModel(),
                welcomeViewProvider: { welcomeView },
                tabBarViewProvider: { tabBarView }
            )
        }
    }

    var welcomeView: some View {
        WelcomeView(
            loginViewProvider: { loginView }
        )
    }

    var loginView: some View {
        LoginView(
            viewModel: LoginViewModel(),
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
