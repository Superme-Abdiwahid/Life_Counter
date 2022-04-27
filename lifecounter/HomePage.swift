//
//  HomePage.swift
//  lifecounter
//
//  Created by stlp on 4/25/22.
//

import Foundation
import UIKit
class HomePage: UIViewController {
    var number_Of_Players = 2
    override func viewDidLoad(){
        Continue_Button.isEnabled = false;
        
    }
    
    
    
    @IBAction func Increment_Or_Decrement(_ sender: UIStepper) {
        sender.maximumValue = 9
        sender.minimumValue = 2
            if(Int(sender.value) > number_Of_Players){
                        print("increasing")
                number_Of_Players += 1
                    }
                    else{
//                        if(number_Of_Players <= 8){
                        print("decresing")
                        number_Of_Players -= 1
                     //   }
                        // this
        }
        if(number_Of_Players > 1){
            Continue_Button.isEnabled = true;

            
        }else{
            Continue_Button.isEnabled = false;

        }
        if(number_Of_Players == 1){
            Total_Players.text = String(number_Of_Players) + " player";
        }else{
            Total_Players.text = String(number_Of_Players) + " players";
        }
        
    }
    @IBAction func Continue_Button(_ sender: Any) {
    }
    @IBOutlet weak var Total_Players: UILabel!
    
    @IBOutlet weak var Increase_Decrease: UIStepper!
    @IBAction func WTF(_ sender: Any) {
        print("WTF")
    }
    
    @IBAction func TTTT(_ sender: UIStepper) {
        print("Sender")
    }
    @IBAction func Add_Players(_ sender: Any) {
        print("Player added")
    }
    @IBOutlet weak var Continue_Button: UIButton!
    @IBAction func Decrease_Player(_ sender: Any) {
        print("Player decreased")
    }
}
