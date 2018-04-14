//
//  SecondViewController.swift
//  hw9-multiview
//
//  Created by Tyla Pollard on 3/31/18.
//  Copyright © 2018 spelman. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var romanOutput: UILabel!
   
    @IBAction func convertButton(_ sender: Any) {
        /*
        userRo = textField.text ?? ""
        
        if userRo != nil {
            if romanToDec(roman: userRo) == -1 { //if the input was invalid
                romanOutput.text = "Invalid input"
            }
            else{
                romanOutput.text = String(romanToDec(roman: userRo))
            }
        }
        else{//user entered nothing
            romanOutput.text = "Invalid Input"
        }

        print(userRo)
 */
        
        
        if textField.text != "" { //if entered something
            userRoman = textField.text!
            if romanToDec(roman: userRoman) == -1 { //if the input was invalid
                romanOutput.text = "Invalid input"
            }
            else{
                romanOutput.text = String(romanToDec(roman: userRoman))
            }
        }
        else{//user entered nothing
            romanOutput.text = "Invalid Input"
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

