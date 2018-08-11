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
    
    @IBAction func Clear(_ sender: UIButton) {
        Input.text = "";
    }
    
    @IBAction func Enter(_ sender: UIButton) {
        let input:String = Input.text!;
        var result = ((Double(input)! - 32)/(1.8));
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

