//
//  ViewController.swift
//  HackwichFive
//
//  Created by Julianne Castillo on 10/5/22.
//

import UIKit

class ViewController: UIViewController {
    //Part 4
    @IBOutlet weak var topLabel: UILabel!
    
    @IBOutlet weak var bottomLabel: UILabel!
    
    @IBOutlet weak var buttonLabel: UIButton!
    
    // Part 6
    var currentIndex = 0
    
    var favoriteFoodsArray = ["Sushi", "Red Velvet Macron", "BBQ Burger & Truffle Fries", "Poke Nachos", "Oxtail Ramen"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Part 5
        topLabel.text = "My Favorite Foods"
        bottomLabel.text = favoriteFoodsArray[currentIndex]
    }
    // Part 8
    
    @IBAction func buttonPressed(_ sender: Any) {
        if self.currentIndex < favoriteFoodsArray.count
        // if the current idex is less than 5 (since there are 5 food items total)
        {
            self.bottomLabel.text = favoriteFoodsArray[currentIndex]
        // The bottom Label withh populate what the current idex (set to 0) in my list. So it would read My Favorite Foods(top label) and then Sushi(bottom label).
            buttonLabel.setTitle ("Next", for: UIControl.State.normal)
        // This makes the button clickable.
            currentIndex += 1
        // By clicking this button it will allow the user to continue down the list in the string.
        }
        else
        {
            print("button has been disabled")
        // Since the list only consists of 5 items, once all the items have been displayed the button is disabled.
            (buttonLabel!).isEnabled=false
        // This code is the action that disables the button.
            
        }
        
    }
}

