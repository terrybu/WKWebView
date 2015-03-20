//
//  ViewController.swift
//  WKWebViewTerryPractice
//
//  Created by Terry Bu on 3/10/15.
//  Copyright (c) 2015 Terry Bu. All rights reserved.
//

import UIKit
import WebKit


class ViewController: UIViewController {

    @IBOutlet var containerView : UIView? = nil
    var webView: WKWebView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var url = NSURL(string:"http://www.sols.com/technology")
        var req = NSURLRequest(URL:url!)
        self.webView!.loadRequest(req);
    }
    
    override func loadView() {
        super.loadView();
        self.webView = WKWebView()
        self.view = self.webView
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

