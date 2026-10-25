import SwiftUI
import WebKit

struct ContentView: View {
    var body: some View {
        MusicWebView()
            .ignoresSafeArea(edges: .bottom)
    }
}

struct MusicWebView: UIViewRepresentable {
    func makeUIView(context: Context) -> WKWebView {
        let configuration = WKWebViewConfiguration()
        let webView = WKWebView(
            frame: .zero,
            configuration: configuration
        )

        webView.allowsBackForwardNavigationGestures = true

        if let url = URL(
            string: "https://music.youtube.com"
        ) {
            webView.load(URLRequest(url: url))
        }

        return webView
    }

    func updateUIView(
        _ uiView: WKWebView,
        context: Context
    ) {}
}
