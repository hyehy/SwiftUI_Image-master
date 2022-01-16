
import SwiftUI

struct CircleImageView : View {
    var body: some View {
            
        Image("myImage")
        .resizable()
            .scaledToFill()
            .frame(width: 300, height: 300)
            .clipShape(Circle())
            .shadow(color: .gray, radius: 10, x: 0, y: 10)
            .overlay(
                Circle()
                .foregroundColor(.black)
                    .opacity(0.3)
            )
            .overlay(
                Circle().stroke(Color.pink, lineWidth: 5)
            )
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView()
    }
}
