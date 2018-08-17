//
//  ViewController.swift
//  Fahrenheit_To_Celsius
//
//  Created by christopher white on 8/11/18.
//  Copyright © 2018 christopher white. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var First_Label: UILabel!
    @IBOutlet weak var Input: UITextField!
    
    
    
    @IBAction func Fahrenheit(_ sender: Any) {
        let input:String = Input.text!;
        var result = (Double(input)! * (9/5)) + 32;
        result.round();
        Input.text = String(result);
    }
    
   
    
    
    @IBAction func Celsius(_ sender: Any) {
        
        let input:String = Input.text!;
        var result = (Double(input)! - 32) * (5/9);
        result.round();
        Input.text = String(result);
    }
    
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        First_Label.textColor = UIColor.blue;
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

