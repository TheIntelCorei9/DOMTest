//
//  ViewController.swift
//  DOMTest
//
//  Created by David Mazzeo on 11/3/2023.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {

    @IBOutlet weak var webView: WKWebView!
    
    @IBAction func run(_ sender: Any) {
        // The small 1x1 UIView in the storyboard file represents where this code is meant to be clicking.
        DispatchQueue.main.async { [self] in
            webView.evaluateJavaScript("document.elementFromPoint(219, 23).click();", completionHandler: { [self] (element, error) in
                if error != nil {
                    print(error)
                } else {
                }
            })
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        webView.navigationDelegate = self
        webView.scrollView.contentInsetAdjustmentBehavior = .never
        webView.load(URLRequest(url: URL(string: "https://theage.com.au")!))
        
    }


}

