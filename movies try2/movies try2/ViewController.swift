//
//  ViewController.swift
//  movies try2
//
//  Created by Nourah on 23/08/1444 AH.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{
    
    var iconClick = false
    
    @IBAction func signIn(_ sender: Any) {
        self.performSegue(withIdentifier: "CenterViewSegue", sender: self)
    }
   
   

    @IBOutlet weak var tf1: UITextField!
    @IBOutlet weak var tf2: UITextField!
    
    func textFieldDidBeginEditing(_ textField: UITextField) {

        if textField == tf1 {
            textField.layer.borderWidth = 1
            textField.layer.borderColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        }
        else if textField == tf2 {
            textField.layer.borderWidth = 1
            textField.layer.borderColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        }
      
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {

        if textField == tf1 {
            textField.layer.borderWidth = 1
            textField.layer.borderColor = #colorLiteral(red: 0.1607843041, green: 0.1607843041, blue: 0.1607843041, alpha: 1)
        }
        else if textField == tf2 {
            textField.layer.borderWidth = 1
            textField.layer.borderColor = #colorLiteral(red: 0.1607843041, green: 0.1607843041, blue: 0.1607843041, alpha: 1)
        }
      
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //design tf
        tf1.layer.cornerRadius = 5
        tf2.layer.cornerRadius = 5
        tf2.enablePasswordToggle()
        tf1.delegate = self
        tf2.delegate = self

        
    }


}


let button = UIButton(type: .custom)
extension UITextField {
    
    func enablePasswordToggle(){
        
        button.setImage(UIImage(named: "eye"), for: .normal)
        button.setImage(UIImage(named: "eye.slash"), for: .selected)
        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: -12, bottom: 0, right: 0)
        button.addTarget(self, action: #selector(togglePasswordView), for: .touchUpInside)
        rightView = button
        rightViewMode = .always
        button.alpha = 0.4
    }
    
    @objc func togglePasswordView(_ sender: Any) {
        isSecureTextEntry.toggle()
        button.isSelected.toggle()
    }

}



