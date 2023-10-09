//
//  ViewController.swift
//  TiketEventsMerchants
//
//  Created by Rendy Hananta Kurniawan on 10/9/23.
//

import WebKit
import CoreServices

class ViewController: UIViewController, WKNavigationDelegate {
    
    @IBOutlet weak var wkWebView: WKWebView!
    var fileDestinationURL: URL?
    var documentInteractionController = UIDocumentInteractionController()
    
    var url: URL? {
        didSet {
            if let url = url {
                self.wkWebView.load(URLRequest(url: url))
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        wkWebView.navigationDelegate = self
        loadWebView()
    }
    
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        decisionHandler(.allow)
    }
    
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        self.handleNavigationError(error)
    }

    func webView(_ webView: WKWebView, didFailProvisionalNavigation navigation: WKNavigation!, withError error: Error) {
        self.handleNavigationError(error)
    }

    private func handleNavigationError(_ error: Error) {
        if let failedUrl = (error as NSError).userInfo[NSURLErrorFailingURLErrorKey] as? URL, !failedUrl.absoluteString.localizedCaseInsensitiveContains("tix-app.tiket.com") {
            UIApplication.shared.open(failedUrl, completionHandler: nil)
        }
    }
    
    func webView(_ webView: WKWebView, decidePolicyFor navigationResponse: WKNavigationResponse, decisionHandler: @escaping (WKNavigationResponsePolicy) -> Void) {
        guard let url = webView.url else { return }
        decisionHandler(.allow)
    }
    
    private func loadWebView() {
        let urlStr: String?
//        urlStr = "https://tix-app-gatotkaca.tiket.com/home" // Staging
        urlStr = "https://tix-app.tiket.com/home" // Production
        
        if let urlStr = urlStr, let url = URL(string: urlStr) {
            wkWebView.load(URLRequest(url: url))
        }
    }
}
