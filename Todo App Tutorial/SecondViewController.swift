//
//  SecondViewController.swift
//  Todo App Tutorial
//
//  Created by Waheduzzaman on Aug/21/17.
//  Copyright © 2017 Waheduzzaman. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    @IBAction func saveClicked(_ sender: UIButton) {
        
        let textVal = textField.text;
        if(textVal != ""){
            rowList.append(textVal!);
            textField.text = "";
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

