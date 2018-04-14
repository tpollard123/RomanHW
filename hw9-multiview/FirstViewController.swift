//
//  FirstViewController.swift
//  hw9-multiview
//
//  Created by Tyla Pollard on 3/31/18.
//  Copyright © 2018 spelman. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
//reference to update the text value
    @IBOutlet weak var textfield: UITextField!
    
    //editing end on exit action to get value that user enters
    @IBAction func textFieldEndonExit(_ sender: Any) {
        
        if textfield.text != nil { //if field is not blank
            uval = Int(textfield.text!) //this is now a optional int
            if uval != nil { //if uval is a appropiate integer
                uservalue = uval! //unwrap it
                if uservalue > 3999 || uservalue < 1{ //make sure number is in the right range
                    romanOutput.text = "Invalid Input"
                }
                else{ //if everything is correct
                    romanOutput.text = decToRoman(dec: uservalue)
                }
            }
            else{ //if its not a integer
                romanOutput.text = "Invalid Input"
            }
        }
        else { // if the field is blank
            romanOutput.text = "Invalid Input"
        }
    }
    

    @IBOutlet weak var sliderValue: UISlider!
    @IBAction func sliderValueChange(_ sender: UISlider) {
       uservalue = Int(sender.value)
        textfield.text = String(uservalue) //let the text field reflect the slider value
        romanOutput.text = decToRoman(dec: uservalue) //call the dec to roman function and let the output but the text of roman label
    }
    
    
    @IBAction func upButton(_ sender: Any) {
        uservalue = uservalue + 1 //increment the user value by 1
        //Make sure they all reflect the same value
        sliderValue.value = Float(uservalue)
        textfield.text = String(uservalue)
        
        if uservalue > 0 {
            romanOutput.text = decToRoman(dec: uservalue)
        }
    }
    
    @IBAction func downButton(_ sender: Any) {
        uservalue = uservalue - 1 //decrement
        textfield.text = String(uservalue)
        
        if uservalue >= 1 {
            sliderValue.value = Float(uservalue)
            romanOutput.text = decToRoman(dec: uservalue)
        }
        else{
            romanOutput.text = "Input is invalid. Lower than one"
        }
    }
    
    @IBOutlet weak var romanOutput: UILabel!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


