//
//  ViewController.swift
//  PokéVision
//
//  Created by Jason McCoy on 7/24/16.
//  Copyright © 2016 Jason McCoy. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    @IBOutlet weak var container: UIView!
    var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView = WKWebView()
        container.addSubview(webView)
        
        let frame = CGRectMake(0, 0, container.bounds.width, container.bounds.height)
        webView.frame = frame
        
        let urlString = "https://pokevision.com/"
        let url = NSURL(string: urlString)!
        let request = NSURLRequest(URL: url)
        
        webView.loadRequest(request)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

