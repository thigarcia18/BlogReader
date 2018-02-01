//
//  DetailViewController.swift
//  Blog Reader
//
//  Created by Thiago Garcia on 01/02/18.
//  Copyright © 2018 iGarcia. All rights reserved.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {

    @IBOutlet var webView: WKWebView!
    
    func configureView() {
        // Update the user interface for the detail item.
        
        
        
        if let detail = detailItem {
            if let blogWebView = self.webView {
                self.title = detail.value(forKey: "title") as! String
                blogWebView.loadHTMLString(detail.value(forKey: "content") as! String, baseURL: nil)
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var detailItem: Event? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

