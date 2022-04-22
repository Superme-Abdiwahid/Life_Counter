//
//  ViewController.swift
//  lifecounter
//
//  Created by stlp on 4/20/22.
//

import UIKit

class ViewController: UIViewController {

    private var player_1_Count = 20;
    private var player_2_Life_Count = 20;
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(Reference_To_Text)
        
    }

    
    @IBAction func Player_One_Minus5_Lives(_ sender: Any) {
        player_1_Count = ChangeText(player_1_Count, 5, "-")
        if(player_1_Count == 0){
            DisplayAlert(player_2_Life_Count, "Player 1")
        }
        updateText(Reference_To_Text, player_1_Count)

    }
    @IBAction func Player_One_Plus5_Lives(_ sender: Any) {
        player_1_Count = ChangeText(player_1_Count, 5, "+")
        if(player_1_Count == 0){
            DisplayAlert(player_2_Life_Count, "Player 1")
        }
        updateText(Reference_To_Text, player_1_Count)


    }
    
    @IBAction func Player_1_Plus_1Life(_ sender: Any) {
        player_1_Count = ChangeText(player_1_Count, 1, "+")
        if(player_1_Count == 0){
            DisplayAlert(player_2_Life_Count, "Player 1")
        }
        updateText(Reference_To_Text, player_1_Count)

    }
    
    
    @IBAction func Player_One_Minus1_Life(_ sender: Any) {
        player_1_Count = ChangeText( player_1_Count, 1, "-")
        if(player_1_Count == 0){
            DisplayAlert(player_2_Life_Count, "Player 1")
        }
        updateText(Reference_To_Text, player_1_Count)

        
    }
    @IBAction func Player_2_Minus5_Lives(_ sender: Any) {
        player_2_Life_Count = ChangeText(player_2_Life_Count, 5, "-")
        if(player_2_Life_Count == 0){
            DisplayAlert(player_2_Life_Count, "Player2")
        }
        updateText(Player2_Text, player_2_Life_Count)
    }
    
    func ChangeText( _ TYPE_field: Int, _ decrement: Int, _ Operator: String) -> Int{
        var TYPE_fields = 0;
        if(Operator == "+"){
         TYPE_fields = TYPE_field + decrement
            return TYPE_fields;
        }else if(Operator == "-"){
            TYPE_fields = TYPE_field - decrement
            return TYPE_fields;
        }
        return TYPE_fields;
        
    }
    @IBAction func Player2_Minus1_Life(_ sender: Any) {
        player_2_Life_Count = ChangeText(player_2_Life_Count, 1, "-")
        if(player_2_Life_Count == 0){
            DisplayAlert(player_2_Life_Count, "Player 2")
        }
        updateText(Player2_Text, player_2_Life_Count)
    }
    @IBAction func Player2_Plus5_Lives(_ sender: Any) {
        player_2_Life_Count = ChangeText(player_2_Life_Count, 5, "+")
        if(player_2_Life_Count == 0){
            DisplayAlert(player_2_Life_Count, "Player 2")
        }
        updateText(Player2_Text, player_2_Life_Count)
    }
    
    func updateText(_ args: UITextField, _ TYPE_field: Int){
        args.text = String(TYPE_field) + " lives left"
    }
    
    func DisplayAlert(_ Player_Type: Int, _ Player: String){
            let alert = UIAlertController(title: "LOSE ALERT", message: Player +  " LOSES!!!! and is out", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment:
                "Default action"), style: .default, handler: { _ in NSLog("The \"OK\" alert occured.")
            }))
            self.present(alert, animated: true, completion: {
                NSLog("The alert was presented")})
    }
    
    
    @IBAction func Player2_Plus1_Life(_ sender: Any) {
        player_2_Life_Count = ChangeText(player_2_Life_Count, 1, "+")
        if(player_2_Life_Count == 0){
            DisplayAlert(player_2_Life_Count, "Player 2")
        }
        updateText(Player2_Text, player_2_Life_Count)
    }
    
    @IBOutlet weak var Reference_To_Text: UITextField!
    
    
    @IBOutlet weak var Player2_Text: UITextField!
}

