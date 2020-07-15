//
//  ViewController.swift
//  Part1
//
//  Created by 山本ののか on 2020/07/15.
//  Copyright © 2020 Nonoka Yamamoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var textField1: UITextField!
    @IBOutlet var textField2: UITextField!
    @IBOutlet var textField3: UITextField!
    @IBOutlet var textField4: UITextField!
    @IBOutlet var textField5: UITextField!
    @IBOutlet var answerLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField1.becomeFirstResponder()
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        view.endEditing(true)
    }

    
    @IBAction func add(_ sender: Any) {
        
        
        let answer: Int = passNum(textField1) + passNum(textField2) + passNum(textField3) + passNum(textField4) + passNum(textField5)
        answerLabel.text = String(answer)
    }
    
    func passNum(_ textField: UITextField) -> Int {
        if textField.text != nil {
            if let stringNum = textField.text {
                return Int(stringNum) ?? 0
            } else {
                return 0
            }
        } else {
            return 0
        }
    }
}

