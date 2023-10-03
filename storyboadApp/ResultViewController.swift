//
//  ResultViewController.swift
//  storyboadApp
//
//  Created by 星享汰 on 2023/09/23.
//

import UIKit

class ResultViewController: UIViewController {

    var price: Int = 0
    var percentValue: NSDecimalNumber = 0.1
    var offFlag: Bool = false
    let plainBehavior = NSDecimalNumberHandler(roundingMode: .plain, scale: 0, raiseOnExactness: false, raiseOnOverflow: false, raiseOnUnderflow: false, raiseOnDivideByZero: false)
    
    @IBOutlet weak var resultField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        let basePercent: NSDecimalNumber = percentValue.adding(1)
        var resultPrice: NSDecimalNumber = 0
        if offFlag {
            resultPrice = NSDecimalNumber(string: String(price)).dividing(by: basePercent.multiplying(by: 100)).multiplying(by: 100)
        } else {
            resultPrice = NSDecimalNumber(string: String(price)).multiplying(by: basePercent)
        }
        resultField.text = "\(resultPrice.rounding(accordingToBehavior: plainBehavior))"
    }
    
}
