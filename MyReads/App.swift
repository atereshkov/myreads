import SwiftUI

import RootFeature
import TabBarFeature
import WelcomeFeature
import LoginFeature

@main
struct MyReadsApp: App {

    let environment = AppEnvironment.boot()

    var body: some Scene {
        WindowGroup {
            RootView(
                welcomeViewProvider: { welcomeView },
                tabBarViewProvider: { tabBarView }
            )
        }
    }

    var welcomeView: some View {
        WelcomeView(
            loginViewProvider: { LoginView() }
        )
    }

    var tabBarView: some View {
        TabBarView(providers: [
            journalTabProvider,
            profileTabProvider
        ])
    }

    var journalTabProvider: TabViewProvider {
        return .init(
            systemImageName: "book.circle.fill",
            tabName: "Books"
        ) {
            return AnyView(Text("First Tab"))
//            return BooksListView(
//                bookViewProvider: { return BookView() },
//                anotherProvider: { return AnotherView() }
//            )
        }
    }

    var profileTabProvider: TabViewProvider {
        return .init(
            systemImageName: "person.circle.fill",
            tabName: "More"
        ) {
            return AnyView(Text("Second Tab"))
        }
    }

}
