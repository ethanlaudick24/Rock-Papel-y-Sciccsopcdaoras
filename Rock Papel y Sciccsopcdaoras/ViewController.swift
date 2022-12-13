//
//  ViewController.swift
//  Rock Papel y Sciccsopcdaoras
//
//  Created by ETHAN LAUDICK on 11/14/22.
//

/* 10 code
Variables and Constants
Operators
Switch Statement
Classes
Github
 
 
 //to add
 for loop
 while loop
 array
 
 
*/

//-------------

/* 8 UI
Navigation Controller
View Controller
Imageview
Button
Label
Stackview
Constraints
Tableview
*/


class AppData{
    static var CPU_Wins = 0
    static var PlayerWin = 0
    static var CPUvsPlayerDraws = 0
}

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func onePlayerButton(_ sender: Any) {
        performSegue(withIdentifier: "onePlayerSegue", sender: nil)
    }
    
    @IBAction func statsButton(_ sender: Any) {
        performSegue(withIdentifier: "statsSegue", sender: nil)
    }
    
    /*
    @IBAction func twoPlayerButton(_ sender: Any) {
        performSegue(withIdentifier: "twoPlayerSegue", sender: nil)
    }
     */
    
}

