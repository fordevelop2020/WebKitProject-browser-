//
//  ViewController.swift
//  Project04
//
//  Created by omari on 7/12/2021.
//

import UIKit
import WebKit

class ViewController: UITableViewController {
//    , WKNavigationDelegate
    
//    var webKit = WKWebView()
//    var progressBar = UIProgressView()
    var websites = ["apple.com","www.hackingwithswift.com","google.com"]
    
//    override func loadView() {
//        webKit = WKWebView()
//        webKit.navigationDelegate = self
////        view = webKit
//    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
//        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Open", style: .plain, target: self, action: #selector(openTapped))
//        let spacer = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
//        let refresh = UIBarButtonItem(barButtonSystemItem: .refresh, target: webKit, action: #selector(webKit.reload))
//        let back = UIBarButtonItem(barButtonSystemItem: .undo, target: webKit, action: #selector(webKit.goBack))
//        let forward = UIBarButtonItem(barButtonSystemItem: .fastForward , target: webKit, action: #selector(webKit.goForward))
//        progressBar = UIProgressView(progressViewStyle: .default)
//        progressBar.sizeToFit()
//
//       let  progressButton = UIBarButtonItem(customView: progressBar)
//        toolbarItems = [back,progressButton,spacer, forward, refresh]
//        navigationController?.isToolbarHidden = false
        
//        webKit.addObserver(self, forKeyPath: #keyPath(WKWebView.estimatedProgress), options: .new, context: nil)
        
        
        print(websites)
        
//        let url = URL(string: "https://" + websites[0])!
//        webKit.load(URLRequest(url: url))
//        webKit.allowsBackForwardNavigationGestures = true
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        websites.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "website", for: indexPath)
        cell.textLabel?.text = websites[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let sv = storyboard?.instantiateViewController(withIdentifier: "Detail") as? WebViewDetails {
        sv.selectedCell = websites[indexPath.row]
        navigationController?.pushViewController(sv, animated: true)
    }
     }
    
    
//    @objc func openTapped(){
//        let vc = UIAlertController(title: "Open page ..",message: nil, preferredStyle: .actionSheet)
//        for website in websites {
//            vc.addAction(UIAlertAction(title: website, style: .default, handler: openPage))
//        }
//
//
//
//        vc.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
//        vc.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
//        present(vc, animated: true)
//    }
//
//    func openPage(action : UIAlertAction){
//        let url = URL(string: "https://" + action.title!)!
//        webKit.load(URLRequest(url: url))
//        webKit.allowsBackForwardNavigationGestures = true
//    }
//
//    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
//        title = webView.title
//    }
//
//    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
//        if keyPath == "estimatedProgress" {
//            progressBar.progress = Float(webKit.estimatedProgress)
//        }
//    }
//
//    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction,
//                 decisionHandler: @escaping (WKNavigationActionPolicy) -> Void){
//        let url = navigationAction.request.url
//
//        if let host = url?.host {
//            for website in websites {
//                if host.contains(website){
//                    decisionHandler(.allow)
//                     return
//                }
//            }
//        }
//        decisionHandler(.cancel)
////            let alert = UIAlertController(title: "it's blocked!", message: "this website is blocked!", preferredStyle: .alert)
////            present(alert, animated: true)
////
//
//
//
//
//    }
//

}

