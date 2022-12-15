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
Safely unwrapping
Array
For Loop
Is/Else
Functions
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
Text View
*/


class AppData{
    static var CPU_Wins = 0
    static var PlayerWin = 0
    static var CPUvsPlayerDraws = 0
    
    static var numberOfGamesPlayed = -1
    static var wins = [Int]()
    static var draws = [Int]()
    static var loses = [Int]()
    
}

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var announcerLabel: UILabel!
    
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

