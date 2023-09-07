import SwiftUI

struct NumberListView: View {
    let numbers = [1, 2, 3, 4, 5]

    var body: some View {
        VStack {
            ForEach(numbers, id: \.self) { number in
                Text("Number: \(number)")
            }
        }
    }
}

struct NumberListView_Previews: PreviewProvider {
    static var previews: some View {
        NumberListView()
    }
}
