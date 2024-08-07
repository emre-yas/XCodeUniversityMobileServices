//
//  ViewController.swift
//  Login In
//
//  Created by Emre Jashari on 17.3.24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textFieldSifre: UITextField!
    @IBOutlet weak var textfieldKullaniciAdi: UITextField!
    
    let d = UserDefaults.standard
    let d2 = UserDefaults.standard
    let d3 = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let username  = d.string(forKey: "Username") ?? "sprazet"
        
        let pass = d.string(forKey: "Password") ?? "sprazet"
        
        if username != "sprazet" && pass != "sprazet" {
            performSegue(withIdentifier: "girisToStudenti", sender: nil)
            
            
        }
        
        
    }
    
    @IBAction func girisYap(_ sender: Any) {
        
        if let username = textfieldKullaniciAdi.text, let  pass = textFieldSifre.text{
            
            if username == "student" && pass == "123456" {
                
                d.set( username,    forKey: "Username")
                d.set (pass , forKey: "Password")
                
                performSegue(withIdentifier: "girisToStudenti", sender: nil)
            }else {
                print("Login Te Gabuar")
            }
            
            if let username = textfieldKullaniciAdi.text, let  pass = textFieldSifre.text{
                
                if username == "professor" && pass == "123456" {
                    
                    d.set( username,    forKey: "Username")
                    d.set (pass , forKey: "Password")
                    
                    performSegue(withIdentifier: "girisToProfesori", sender: nil)
                }else {
                    print("Login Te Gabuar")
                }
                
                
                
                
            }
           
            
            if let username = textfieldKullaniciAdi.text, let  pass = textFieldSifre.text{
                
                if username == "administration" && pass == "123456" {
                    
                    d.set( username,    forKey: "Username")
                    d.set (pass , forKey: "Password")
                    
                    performSegue(withIdentifier: "toAdministrata", sender: nil)
                }else {
                    print("Login Te Gabuar")
                }
                
                
                
                
            }
            
        }
    }
    
}
