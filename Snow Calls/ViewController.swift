//
//  ViewController.swift
//  Snow Calls
//
//  Created by Branton Hung on 2019-11-27.
//  Copyright © 2019 Branton Hung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //Mark Properties:
    @IBOutlet weak var textImput: UITextField!
    @IBOutlet weak var convertedResult: UILabel!
    
    
    
    //Convert
    @IBAction func convertButton(_ sender: Any) {
        //Make sure result is gone when you type in text
        
        
        //Use guard statement
        guard let textFieldAsString = textImput.text, textFieldAsString != "" else{
            convertedResult.text = "Please enter phone numbers to convert"
            return
        }
        
        var output = ""
        // Convert number
        // Look at each character one by one
        for character in textFieldAsString {
            
            //Stop the code if the character count exedes 10
            if textFieldAsString.count > 10{
                break
            }
            
            // Translate each input character to the correct output chracter
            switch textFieldAsString {
            case "1": output += "1"
            // add a 1 to the output
            case "A"..."C", "2": output += "2"
            // add a 2 to the output
            case "D"..."f", "3": output += "3"
            //add 3 to the output
            case "G"..."I", "4": output += "4"
            //add 4 to the output
            case "J"..."L","5": output += "5"
            //add 5 to the output
            case "M"..."O", "6": output += "6"
            //add 6 to the output
            case "P"..."s", "7": output += "7"
            //add 7 tp the output
            case "T"..."V", "8": output += "8"
            //add 8 to the output
            case "w"..."z", "9": output += "9"
            //add 9 to the output
            case "0": output += "0"
            //add 0 to the output
            default: output += "-"
            //add - to the output
           
            }
        }
        convertedResult.text = output
        
        
        
    }
    
}
