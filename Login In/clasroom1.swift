//
//  clasroom1.swift
//  Login In
//
//  Created by Emre Jashari on 29.4.24.
//

import UIKit
import WebKit


class clasroom1: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "https://accounts.google.com/v3/signin/identifier?continue=https%3A%2F%2Fclassroom.google.com&ifkv=AaSxoQyqZFQUTX47l52py7cib8_tKnL72Rv5Nxp-050FJZ2qxW4tH7tTIMDAouagCKuYaZyivrSWeQ&passive=true&flowName=GlifWebSignIn&flowEntry=ServiceLogin&dsh=S285262846%3A1714397523936279&theme=mn&ddm=0")!
         
         webView.load(URLRequest(url:url))


    }
    

   
}
