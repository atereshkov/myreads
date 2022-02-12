import SwiftUI

public struct RootView<Welcome: View, TabBar: View>: View {

    private var welcomeViewProvider: () -> Welcome
    private var tabBarViewProvider: () -> TabBar

    public init(
        welcomeViewProvider: @escaping () -> Welcome,
        tabBarViewProvider: @escaping () -> TabBar
    ) {
        self.welcomeViewProvider = welcomeViewProvider
        self.tabBarViewProvider = tabBarViewProvider
    }

    public var body: some View {
        if false {
            AnyView(welcomeViewProvider())
        } else {
            AnyView(tabBarViewProvider())
        }
    }

}
