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
    
    
    @IBAction func actionHideUserInputsButton(_ sender: Any) {
        userAmountTextField.resignFirstResponder()
        navigationItem.rightBarButtonItem = nil
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        userAmountTextField.text = "100"
    }
    
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
        navigationItem.rightBarButtonItem = hideUserInputsButton
    }
    

}
