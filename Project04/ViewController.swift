//
//  ViewController.swift
//  Project04
//
//  Created by omari on 7/12/2021.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {
    
    var webKit = WKWebView()
    
    override func loadView() {
        webKit = WKWebView()
        webKit.navigationDelegate = self
        view = webKit
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Open", style: .plain, target: self, action: #selector(openTapped))
        
        let url = URL(string: "https://www.hackingwithswift.com")!
        webKit.load(URLRequest(url: url))
        webKit.allowsBackForwardNavigationGestures = true
    }
    
    @objc func openTapped(){
        let vc = UIAlertController(title: "Open page ..",message: nil, preferredStyle: .actionSheet)
        vc.addAction(UIAlertAction(title: "www.hackingwithswift.com", style: .default, handler: openPage))
        vc.addAction(UIAlertAction(title: "www.apple.com", style: .default, handler: openPage))
        vc.addAction(UIAlertAction(title: "www.google.com", style: .default, handler: openPage))
        vc.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        vc.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
        present(vc, animated: true)
    }
     
    func openPage(action : UIAlertAction){
        let url = URL(string: "https://" + action.title!)!
        webKit.load(URLRequest(url: url))
        webKit.allowsBackForwardNavigationGestures = true
    }

    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        title = webView.title
    }
    
    

}

