import SwiftUI

public struct LoginView<Registration: View>: View {

    private var registrationViewProvider: () -> Registration

    public init(registrationViewProvider: @escaping  () -> Registration) {
        self.registrationViewProvider = registrationViewProvider
    }

    public var body: some View {
        Text("LoginView").padding()
    }

}
