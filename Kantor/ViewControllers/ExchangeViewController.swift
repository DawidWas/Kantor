//
//  FirstViewController.swift
//  Kantor
//
//  Created by Dawid Was on 16/01/2019.
//  Copyright © 2019 Dawid Was. All rights reserved.
//

import UIKit

class ExchangeViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBOutlet weak var userAmountTextField: UITextField!
    
    @IBOutlet weak var exchangeLabel: UILabel!
    
    @IBOutlet weak var currencyButton: UIButton!
    
    @IBOutlet var hideUserInputsButton: UIBarButtonItem!
    
    var result: (buy:Float, sell:Float) = (0.0,0.0)
    var kantor = Kantor()
    
    
//MARK: ViewControler -
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userAmountTextField.text = "100"
        
        actionUserAmountTextField(userAmountTextField)
        
        let tapGest = UITapGestureRecognizer(target: self, action: #selector(ExchangeViewController.actionHideUserInputsButton(_:)))
        
        self.view.addGestureRecognizer(tapGest)
    }
    
    
//MARK: metody -
    
    @IBAction func actionHideUserInputsButton(_ sender: Any) {
        userAmountTextField.resignFirstResponder()
        navigationItem.rightBarButtonItem = nil
    }
    
    
    @IBAction func actionUserAmountTextField(_ sender: Any) {
  //  userAmountTextField.text = NSString(format: " ", userAmountTextField) as String
  //     let amount = NSString(format: " ", userAmountTextField) as String
  //      result = kantor.exchange(amount: amount, currencyCode: "USD")
        
        
//     let amount = Float(userAmountTextField.text.toInt()! )
//        result = kantor.exchange(amount, currencyCode: "USD")
        
        
        actionUpdateInterface()
    }
    
    @IBAction func actionUpdateInterface() {
        
        var displayResult: Float = 0.0
        
        if (segmentedControl.selectedSegmentIndex == 0){
            displayResult = result.sell
        } else{
            displayResult = result.buy
        }
        exchangeLabel.text = "\(displayResult)"
    }
    
    
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
        navigationItem.rightBarButtonItem = hideUserInputsButton
    }
    

}
