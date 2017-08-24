//
//  ViewController.swift
//  helloWorld
//
//  Created by Don Slaughter on 7/2/17.
//  Copyright © 2017 Don Slaughter. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBAction func btn(_ sender: Any) {
        if textField.text == "" || textField.text == nil {
            label.text = "Please enter text in the input box"
        }
        else {
            label.text = "Hello, \(textField.text!)!"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        textField.resignFirstResponder()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }


}

