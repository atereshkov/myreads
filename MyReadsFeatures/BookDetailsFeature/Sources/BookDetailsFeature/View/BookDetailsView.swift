import SwiftUI

public struct BookDetailsView: View {

    private let id: String

    public init(id: String) {
        self.id = id
    }

    public var body: some View {
        content
    }

    var content: some View {
        Text("Book Details ID: \(id)").padding()
    }

}
