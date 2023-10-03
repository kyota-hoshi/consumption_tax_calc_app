//
//  ViewController.swift
//  storyboadApp
//
//  Created by 星享汰 on 2023/09/19.
//

import UIKit

class ViewController: UIViewController {

    var percentValue = NSDecimalNumber(string: "0.1")
    var offFlag: Bool = false

    @IBOutlet weak var percentButton: UIButton!
    @IBOutlet weak var priceField: UITextField!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        percentButton.menu = UIMenu(children: [
            UIAction(title: "10%", handler: { (action: UIAction) in
                self.percentValue = 0.1
            }),
            UIAction(title: "8%", handler: { (action: UIAction) in
                self.percentValue = 0.08
            }),
            UIAction(title: "5%", handler: { (action: UIAction) in
                self.percentValue = 0.05
            }),
        ])
        percentButton.showsMenuAsPrimaryAction = true
        percentButton.changesSelectionAsPrimaryAction = true
    }
    
    func setResultViewValues(nextView: ResultViewController) {

        let price = Int(priceField.text!)
        nextView.price = price!
        nextView.percentValue = percentValue
        nextView.offFlag = offFlag
    }

    func setPriceField(btnNum: String) {
        let value = priceField.text! + btnNum
        if let price = Int(value) {
            priceField.text = "\(price)"
        }
    }
    
    @IBAction func pushOffButton(_ sender: Any) {
        offFlag = true
        let nextView = self.storyboard?.instantiateViewController(withIdentifier: "ResultStoryBoard") as! ResultViewController
        setResultViewValues(nextView: nextView)
        self.present(nextView, animated: true, completion: nil)
    }
    
    @IBAction func pushOnButton(_ sender: Any) {
        offFlag = false
        let nextView = self.storyboard?.instantiateViewController(withIdentifier: "ResultStoryBoard") as! ResultViewController
        setResultViewValues(nextView: nextView)
        self.present(nextView, animated: true, completion: nil)
    }
    
    @IBAction func tap1Button(_ sender: Any) {
        setPriceField(btnNum: "1")
    }
    
    @IBAction func tap2Button(_ sender: Any) {
        setPriceField(btnNum: "2")
    }
    
    @IBAction func tap3Button(_ sender: Any) {
        setPriceField(btnNum: "3")
    }
    
    @IBAction func tap4Button(_ sender: Any) {
        setPriceField(btnNum: "4")
    }
    
    @IBAction func tap5Button(_ sender: Any) {
        setPriceField(btnNum: "5")
    }
    
    @IBAction func tap6Button(_ sender: Any) {
        setPriceField(btnNum: "6")
    }
    
    @IBAction func tap7Button(_ sender: Any) {
        setPriceField(btnNum: "7")
    }
    
    @IBAction func tap8Button(_ sender: Any) {
        setPriceField(btnNum: "8")
    }
    
    @IBAction func tap9Button(_ sender: Any) {
        setPriceField(btnNum: "9")
    }
    
    @IBAction func tap0Button(_ sender: Any) {
        setPriceField(btnNum: "0")
    }
    
    @IBAction func tap00Button(_ sender: Any) {
        setPriceField(btnNum: "00")
    }
    
    @IBAction func tapCrearButton(_ sender: Any) {
        priceField.text = "0"
    }
    
    @IBAction func restart(_ segue: UIStoryboardSegue) {
        priceField.text = "0"
    }
    
 }

