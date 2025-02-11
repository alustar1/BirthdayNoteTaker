//
//  ViewController.swift
//  BirthdayNoteTaker
//
//  Created by Muhammet Kuzu on 9.02.2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var NameTextField: UITextField!
    @IBOutlet weak var BirthdayTextField: UITextField!
    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var BirthdayLabel: UILabel!
    
    
    override func viewDidLoad() {
            super.viewDidLoad()
            let storedName = UserDefaults.standard.object(forKey: "name")
            
            let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
            
            if let newName = storedName as? String{
                NameLabel.text = "Name : \(newName)"
                
            }
            
            if let newBirthday = storedBirthday as? String{
                BirthdayLabel.text = "Birthday : \(newBirthday)"
            }
        
        
    }

    
    @IBAction func DeleteClicked(_ sender: UIButton) {
        
            let storedName = UserDefaults.standard.object(forKey: "name")
            let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
            
            if  (storedName as? String) != nil {
                UserDefaults.standard.removeObject(forKey: "name")
                NameLabel.text = "Name : "
            }
        
            if (storedBirthday as? String) != nil {
                UserDefaults.standard.removeObject(forKey: "birthday")
                BirthdayLabel.text = "Birthday : "
            }
            
            }
    
    
    
    @IBAction func SaveBTN(_ sender: UIButton) {
    
        
        UserDefaults.standard.set(NameTextField.text!, forKey: "name")
        UserDefaults.standard.set(BirthdayTextField.text!, forKey: "birthday")
        
        
        NameLabel.text = "Name : \(NameTextField.text!)"
        BirthdayLabel.text = "Birthday : \(BirthdayTextField.text!)"
        
        
        
        
        
        
        
    }
    
    

}

