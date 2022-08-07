//
//  ViewController.swift
//  CalculatorApp
//
//  Created by ProdMac on 7.08.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var num1: UITextField!
    @IBOutlet weak var num2: UITextField!
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var savedResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let savedNumber = UserDefaults.standard.object(forKey: "lastresult")
        if let nevNumber = savedNumber as? String{
            savedResult.text = nevNumber
        }
    }

    @IBAction func savedButton(_ sender: Any) {
        
        UserDefaults.standard.set(savedResult.text!, forKey: "lastresult")
        savedResult.text = result.text
        
    }
    @IBAction func plus(_ sender: Any) {
        
        if let mytextField1 = Int(num1.text!){
            if let mytextField2 = Int(num2.text!){
                let resultNumber = mytextField1+mytextField2
                result.text = String(resultNumber)
            }else {
                result.text = "Hatalı Bir Değer Girdiniz"
            }
        }
    }
    @IBAction func minus(_ sender: Any) {
        
        if let mytextField1 = Int(num1.text!){
            if let mytextField2 = Int(num2.text!){
                let resultNumber = mytextField1-mytextField2
                result.text = String(resultNumber)
            }else{
                result.text = "Hatalı Bir Değer Girdiniz"
            }
        }
        
    }
    @IBAction func division(_ sender: Any) {
        
        if let mytextField1 = Int(num1.text!){
            if let mytextField2 = Int(num2.text!){
                let resultNumber = mytextField1/mytextField2
                result.text = String(resultNumber)
            }else {
                result.text = "Hatalı Bir Değer Girdiniz"
            }
        }
    }
    @IBAction func multiplication(_ sender: Any) {
        
        if let mytextField1 = Int(num1.text!){
            if let mytextField2 = Int(num2.text!){
                let resultNumber = mytextField1*mytextField2
                result.text = String(resultNumber)
            }else{
                result.text = "Hatalı Bir Değer Girdiniz"
            }
       }
    }
}

