//
//  GuestVC.swift
//  Login In
//
//  Created by Emre Jashari on 25.3.24.
//

import UIKit
import WebKit

class GuestVC: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "https://unt.edu.mk/sq/")!
         
         webView.load(URLRequest(url:url))


    }
    

   
}
