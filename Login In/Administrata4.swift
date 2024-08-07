//
//  Administrata4.swift
//  Login In
//
//  Created by Emre Jashari on 22.3.24.
//

import UIKit

class Administrata4: UIViewController {
    let d3  =  UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    


    @IBAction func logOut(_ sender: Any) {
        d3.removeObject(forKey: "Username")
        d3.removeObject(forKey: "Password")
        exit(-1)
    }
    
    
}
