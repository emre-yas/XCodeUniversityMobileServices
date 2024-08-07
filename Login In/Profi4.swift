//
//  Profi4.swift
//  Login In
//
//  Created by Emre Jashari on 22.3.24.
//

import UIKit

class Profi4: UIViewController {

    let d2  =  UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    
   
    @IBAction func logOut(_ sender: Any) {
        d2.removeObject(forKey: "Username")
        d2.removeObject(forKey: "Password")
        exit(-1)
    }
}
