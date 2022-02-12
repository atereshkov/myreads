import SwiftUI

struct MyBookRow: View {
    var item: BookViewItem

    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(item.id)
                Text(item.name)
                Divider()
            }
            Spacer()
        }
        .frame(minWidth: 0, maxWidth: .infinity)
    }
}

#if DEBUG
struct PortfolioRowViewPreviews: PreviewProvider {
    static var previews: some View {
        MyBookRow(item: BookViewItem(id: "1", name: "Name1"))
            .previewLayout(.fixed(width: 375, height: 40))
    }
}
#endif
