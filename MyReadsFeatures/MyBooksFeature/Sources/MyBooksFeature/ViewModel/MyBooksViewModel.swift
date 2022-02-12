import Foundation

public class MyBooksViewModel: ObservableObject {

    // MARK: Output

    @Published var books: [BookViewItem] = [
        BookViewItem(id: "1", name: "Book 1"),
        BookViewItem(id: "2", name: "Book 2"),
        BookViewItem(id: "3", name: "Book 3")
    ]

    @Published var routingState: MyBooksRouting

    public init() {
        // Injecting via init or DI Container?
        self.routingState = MyBooksRouting()

//        cancelBag.collect {
//            $routingState
//                .sink { session.appState[\.routing.home] = $0 }
//
//            session.appState.map(\.data.portfolios)
//                .removeDuplicates()
//                .assign(to: \.portfolios, on: self)
//        }
    }
}
