//
//  statsViewController.swift
//  Rock Papel y Sciccsopcdaoras
//
//  Created by ETHAN LAUDICK on 12/7/22.
//

import UIKit

class statsViewController: UIViewController
{
    
    @IBOutlet weak var textField: UITextView!
    var toDisplay = ""
    
    @IBOutlet weak var announcerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        changeHomeLabel()
        
        switch AppData.numberOfGamesPlayed {
        case -1:
            return
        default:
            for i in 0...AppData.numberOfGamesPlayed {
                toDisplay += "Game \(i + 1):\nWins - \(AppData.wins[i])\nDraws - \(AppData.draws[i])\nLoses - \(AppData.loses[i])\n\n"
            }
        }
        
        textField.text = toDisplay
        
    }
    
    func changeHomeLabel() {
        print("\(AppData.CPU_Wins)\n\(AppData.PlayerWin)\n\(AppData.CPUvsPlayerDraws)")
        
        if AppData.CPU_Wins > AppData.PlayerWin {
            announcerLabel.text = "The Computer currently has more alltime wins than you! Go beat him!"
        } else if AppData.PlayerWin > AppData.CPU_Wins {
            announcerLabel.text = "You currently have more alltime wins than the computer! Keep that lead!"
        }else{
            announcerLabel.text = "You and the Computer are currently tied for Wins! Go beat him!"
        }
        
    }
}
