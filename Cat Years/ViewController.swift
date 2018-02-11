//
//  ViewController.swift
//  Cat Years
//
//  Created by Harry Crank on 01/02/2018.
//  Copyright © 2018 Harry Crank. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var catAgeTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!

    override func viewDidLoad() {
        
        catAgeTextField.delegate = self
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        catAgeTextField.resignFirstResponder()
        return true
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let allowedCharacters = CharacterSet.decimalDigits
        let characterSet = CharacterSet(charactersIn: string)
        return allowedCharacters.isSuperset(of: characterSet)
    }

    @IBAction func findAge(_ sender: UIButton) {
        
        catAgeTextField.resignFirstResponder()
        
        var catAge = Int(catAgeTextField.text!) ?? Int(0)
        
        catAge = catAge * 7
        
        resultLabel.text = "Your cat is \(catAge) in human years"
    }
    
}

