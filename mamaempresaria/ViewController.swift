//
//  ViewController.swift
//  mamaempresaria
//
//  Created by Desarrollo on 14/01/20.
//  Copyright © 2020 novaventa. All rights reserved.
//

import UIKit
import WebKit

final class ViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet weak var backButton: UIBarButtonItem!
    
    // MARK: - Private
    private var webView: WKWebView!
    
    
    // MARK: - Func
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Web View
        let webViewPrefs = WKPreferences()
        webViewPrefs.javaScriptEnabled = true
        webViewPrefs.javaScriptCanOpenWindowsAutomatically = true
        let webViewConf = WKWebViewConfiguration()
        webViewConf.preferences = webViewPrefs
        
        webView = WKWebView(frame: view.frame, configuration: webViewConf)
        webView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.addSubview(webView)
        
        load(url: "https://comercio.novaventa.com.co/nautilusb2bstorefront/nautilus/es/COP/login")
    }
    
    
    @IBAction func backButtonAction(_ sender: Any) {
        webView.goBack()
    }
    
    private func load(url: String){
        webView.load(URLRequest(url: URL(string: url)!))
    }
    
    
    

}

