//
//  AnaSayfaVC.swift
//  Login In
//
//  Created by Emre Jashari on 17.3.24.
//

import UIKit

class AnaSayfaVC: UIViewController {

    @IBOutlet weak var labelSonuc: UILabel!
    let d  =  UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true
        
        let username = d.string(forKey: "Username") ?? "bos"
     
    }
    

    @IBAction func cikisYap(_ sender: Any) {
        d.removeObject(forKey: "Username")
        d.removeObject(forKey: "Password")
        exit(-1)
    }
    

}
