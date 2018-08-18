//
//  ViewController.swift
//  Fahrenheit_To_Celsius
//
//  Created by christopher white on 8/11/18.
//  Copyright © 2018 christopher white. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var First_Label: UILabel! //Title
    @IBOutlet weak var Input: UITextField!   // Input from user
    
    @IBAction func Fahrenheit(_ sender: Any) {  //converts celsius to Fahrenheit
        let input:String = (Input.text)!;
        
        if(input != ""){ 
            var result = ((Double(input))! * (9/5)) + 32;
            result.round();
            Input.text = String(result);
        }
    }
    
    @IBAction func Celsius(_ sender: Any) { //Converts Fahrenheit to celsius
        let input:String = Input.text!;
        
        if(input != ""){
        var result = (Double(input)! - 32) * (5/9);
        result.round();
        Input.text = String(result);
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       Input.keyboardType = UIKeyboardType.numberPad  //input textfield uses only numbers from numberpad
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

