//
//  ViewController.swift
//  RxSwiftDemoProj
//
//  Created by Neosoft on 17/10/23.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate {

    let baseUrl = ServerConfig.shared.baseUrl
    @IBOutlet var webView : UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        webView.delegate = self
        if let url = URL(string: baseUrl ?? "invalid") {
            print("URL: \(url)")
            let request = URLRequest(url: url)
            webView.loadRequest(request)
        } else {
            print("Invalid URL")
        }

        
    }


}

