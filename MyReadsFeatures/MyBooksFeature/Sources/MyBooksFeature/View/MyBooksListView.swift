import SwiftUI

public struct MyBooksListView<BookDetail: View>: View {

    @ObservedObject var viewModel: MyBooksViewModel

    private var bookDetailViewProvider: (_ id: String) -> BookDetail

    public init(
        viewModel: MyBooksViewModel,
        bookDetailViewProvider: @escaping (_ id: String) -> BookDetail
    ) {
        self.viewModel = viewModel
        self.bookDetailViewProvider = bookDetailViewProvider
    }

    public var body: some View {
        content
    }

}

extension MyBooksListView {

    var content: some View {
        NavigationView {
            VStack(alignment: .leading) {
                booksSection
                    .padding([.top], 12)
                books
            }
            .padding([.leading, .trailing], 18)
            .navigationBarTitle(Text("Home"), displayMode: .inline)
            .navigationBarItems(trailing: accountButton)
        }
    }

    var booksSection: some View {
        HStack {
            Text("Books")
            Spacer()
            Button(action: {
//                viewModel.input.newPortfolioAction()
            }, label: {
                Image(systemName: "plus").imageScale(.large)
            })
        }
    }

    var books: some View {
        ScrollView {
            LazyVStack {
                ForEach(viewModel.books) { portfolio in
                    NavigationLink(
                        destination: bookView(portfolio),
                        tag: portfolio.id,
                        selection: $viewModel.routingState.bookDetails
                    ) {
                        MyBookRow(item: portfolio)
                    }
                }
            }
        }
    }

    var accountButton: some View {
        Button(
//            action: viewModel.accountAction,
            action: { },
            label: { Image(systemName: "person.crop.circle").imageScale(.large) }
        )
    }

    func bookView(_ book: BookViewItem) -> some View {
        return bookDetailViewProvider(book.id)
    }

}
