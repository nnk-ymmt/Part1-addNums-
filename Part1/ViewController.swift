//
//  ViewController.swift
//  Part1
//
//  Created by 山本ののか on 2020/07/15.
//  Copyright © 2020 Nonoka Yamamoto. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {

//    @IBOutlet private weak var textFields: [UITextField]!
    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    @IBOutlet private weak var textField3: UITextField!
    @IBOutlet private weak var textField4: UITextField!
    @IBOutlet private weak var textField5: UITextField!
    @IBOutlet private weak var answerLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        textField1.becomeFirstResponder()
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }

    @IBAction private func add(_ sender: Any) {
        let answer: Int = passNum(textField1) + passNum(textField2) + passNum(textField3) + passNum(textField4) + passNum(textField5)
        answerLabel.text = String(answer)
    }

    private func passNum(_ textField: UITextField) -> Int {
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

//private func passNum(_ textField: UITextField) -> Int {
//    if let stringNum = textField.text {
//        return Int(stringNum) ?? 0
//    } else {
//        return 0
//    }
//}

// 解答例

//@IBAction private func add(_ sender: Any) {
//    self.pressButton1()
//    //self.pressButton2()
//    //self.pressButton3()
//    //self.pressButton4()
//}

// 方法1
//private func pressButton1() {
//    var sum = 0
//    for textField in textFields {
//        sum += Int(textField.text ?? "") ?? 0
//    }
//    answerLabel.text = "\(sum)"
//}

// 方法2
//private func pressButton2() {
//    let sum = textFields.map{(tf: UITextField) -> Int in return Int(tf.text ?? "") ?? 0}.reduce(0, combine: +)
//    answerLabel.text = "\(sum)"
//}

// 方法3
//private func pressButton3() {
//    let sum = textFields.map{tf -> Int in Int(tf.text ?? "") ?? 0}.reduce(0, combine: +)
//    answerLabel.text = "\(sum)"
//}

// 方法4
//private func pressButton4() {
//    let sum = textFields.map{Int($0.text ?? "") ?? 0}.reduce(0, combine: +)
//    answerLabel.text = "\(sum)"
//}

// 方法5
//computed property
//private var textFields : [UITextField] {
//    [textField1, textField2, textField3, textField4, textField5]
//}
//@IBOutlet private weak var resultLabel: UILabel!
//@IBAction private func calcButton(_ sender: Any) {
//    var result: Int = 0
//    for textField in textFields {
//        if textField.text == "" {
//            textField.text = "0"
//        }
//        result += Int( textField.text ?? "" ) ?? 0
//    }
//    resultLabel.text = result.description
//}

// 方法6
//@IBAction private func addtion(_ sender: Any) {
//    let textFields: [UITextField] = [textField1, textField2, textField3, textField4, textField5]
//    let sum = textFields.reduce(0, { result, element in
//        result + (Int(element.text!) ?? 0)
//    })
//    calculationResult.text = String(sum)
//}
