
import SwiftUI
import WebKit

struct MyWebview: UIViewRepresentable {
    
    var url: String
    
    func makeUIView(context: Context) -> WKWebView {
        
        guard let url = URL(string: self.url) else {
            return WKWebView()
        }
    
        let urlRequest = URLRequest(url: url)
        let wkWebview = WKWebView()
        wkWebview.load(urlRequest)
        return wkWebview
    }
    
    
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<MyWebview>) {
        
    }
    
}

struct MyWebView_Previews: PreviewProvider {
    static var previews: some View {
        MyWebview(url: "https://www.naver.com")
    }
}
