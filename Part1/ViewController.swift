//
//  ViewController.swift
//  Part1
//
//  Created by 山本ののか on 2020/07/15.
//  Copyright © 2020 Nonoka Yamamoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var textFields: [UITextField]!
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



// 改善点

//func passNum(_ textField: UITextField) -> Int {
//    if let stringNum = textField.text {
//        return Int(stringNum) ?? 0
//    } else {
//        return 0
//    }
//}

// 解答例

//@IBAction func add(_ sender: Any) {
//    self.pressButton1()
//    //self.pressButton2()
//    //self.pressButton3()
//    //self.pressButton4()
//}

// 方法1
//func pressButton1() {
//    var sum = 0
//    for textField in textFields {
//        sum += Int(textField.text ?? "") ?? 0
//    }
//    answerLabel.text = "\(sum)"
//}

// 方法2
//func pressButton2() {
//    let sum = textFields.map{(tf: UITextField) -> Int in return Int(tf.text ?? "") ?? 0}.reduce(0, combine: +)
//    answerLabel.text = "\(sum)"
//}

// 方法3
//func pressButton3() {
//    let sum = textFields.map{tf -> Int in Int(tf.text ?? "") ?? 0}.reduce(0, combine: +)
//    answerLabel.text = "\(sum)"
//}

// 方法4
//func pressButton4() {
//    let sum = textFields.map{Int($0.text ?? "") ?? 0}.reduce(0, combine: +)
//    answerLabel.text = "\(sum)"
//}
