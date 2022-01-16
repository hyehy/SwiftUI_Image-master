

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack{
                
                Image("flower")
                    .frame(height: 10)
        
                CircleImageView()
                HStack{
                    NavigationLink(destination: MyWebview(url: "https://www.youtube.com/channel/UCXqOYmtJBUnFywklywk0YvQ")
                        .edgesIgnoringSafeArea(.all)
                    ){
                        Text("구독하러 가기")
                            .font(.system(size: 15))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.red)
                            .cornerRadius(20)
                    }
                    NavigationLink(destination: MyWebview(url: "https://open.kakao.com/o/si5OgNUd")
                        .edgesIgnoringSafeArea(.all)
                    ){
                        Text("오픈카톡방 가기")
                            .font(.system(size: 15))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.orange)
                            .cornerRadius(20)
                    }
                } // Hstack
                .padding(50)
                
                Spacer()
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
