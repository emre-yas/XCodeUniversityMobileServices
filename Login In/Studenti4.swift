//
//  Studenti4.swift
//  Login In
//
//  Created by Emre Jashari on 22.3.24.
//

import UIKit

class Studenti4: UIViewController {
    let d  =  UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func logOut(_ sender: Any) {
        d.removeObject(forKey: "Username")
        d.removeObject(forKey: "Password")
        exit(-1)

    }
}
