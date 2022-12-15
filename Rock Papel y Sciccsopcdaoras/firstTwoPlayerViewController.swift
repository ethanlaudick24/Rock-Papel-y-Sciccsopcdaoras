//
//  firstTwoPlayerViewController.swift
//  Rock Papel y Sciccsopcdaoras
//
//  Created by ETHAN LAUDICK on 11/14/22.
//

import UIKit

class firstTwoPlayerViewController: UIViewController {

    @IBOutlet weak var CPUImageOutlet: UIImageView!
    @IBOutlet weak var winDisplayLabel: UILabel!
    
    @IBOutlet weak var playerWinsLabel: UILabel!
    @IBOutlet weak var drawsLabel: UILabel!
    @IBOutlet weak var CPU_WinsLabel: UILabel!
    
    var thisWin = 0
    var thisDraw = 0
    var thisLose = 0
    
    var ComputerRandomNum = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ComputerRandomNum = Int.random(in: 1...3)
        
        playerWinsLabel.text = "Player Wins: 0"
        drawsLabel.text = "Draws: 0"
        CPU_WinsLabel.text = "CPU Wins: 0"
    }

    
    @IBAction func rockButton(_ sender: Any) {
        switch ComputerRandomNum {
        case 1:
            //rock
            CPUImageOutlet.image = UIImage(named: "output-onlinepngtools")
            AppData.CPUvsPlayerDraws += 1
            thisDraw += 1
            winDisplayLabel.text = "Draw!"
            drawsLabel.text = "Draws: \(thisDraw)"
        case 2:
            //paper
            CPUImageOutlet.image = UIImage(named: "output-onlinepngtools-2")
            AppData.CPU_Wins += 1
            thisLose += 1
            winDisplayLabel.text = "CPU Wins!"
            CPU_WinsLabel.text = "CPU Wins: \(thisLose)"
        case 3:
            //scissors
            CPUImageOutlet.image = UIImage(named: "output-onlinepngtools-4")
            AppData.PlayerWin += 1
            thisWin += 1
            winDisplayLabel.text = "Player Wins!"
            playerWinsLabel.text = "Player Wins: \(thisWin)"
        default:
            AppData.PlayerWin = AppData.PlayerWin
        }
        ComputerRandomNum = Int.random(in: 1...3)
    }
    
    @IBAction func scissorsButton(_ sender: Any) {
        switch ComputerRandomNum {
        case 1:
            //rock
            CPUImageOutlet.image = UIImage(named: "output-onlinepngtools")
            AppData.CPU_Wins += 1
            thisLose += 1
            winDisplayLabel.text = "CPU Wins!"
            CPU_WinsLabel.text = "CPU Wins: \(thisLose)"
        case 2:
            //paper
            CPUImageOutlet.image = UIImage(named: "output-onlinepngtools-2")
            AppData.PlayerWin += 1
            thisWin += 1
            winDisplayLabel.text = "Player Wins!"
            playerWinsLabel.text = "Player Wins: \(thisWin)"
        case 3:
            //scissors
            CPUImageOutlet.image = UIImage(named: "output-onlinepngtools-4")
            AppData.CPUvsPlayerDraws += 1
            thisDraw += 1
            winDisplayLabel.text = "Draw!"
            drawsLabel.text = "Draws: \(thisDraw)"
        default:
            AppData.PlayerWin = AppData.PlayerWin
        }
        ComputerRandomNum = Int.random(in: 1...3)
    }
    
    @IBAction func paperButton(_ sender: Any) {
        switch ComputerRandomNum {
        case 1:
            //rock
            CPUImageOutlet.image = UIImage(named: "output-onlinepngtools")
            AppData.PlayerWin += 1
            thisWin += 1
            winDisplayLabel.text = "Player Wins!"
            playerWinsLabel.text = "Player Wins: \(thisWin)"
        case 2:
            //paper
            CPUImageOutlet.image = UIImage(named: "output-onlinepngtools-2")
            AppData.CPUvsPlayerDraws += 1
            thisDraw += 1
            winDisplayLabel.text = "Draw!"
            drawsLabel.text = "Draws: \(thisDraw)"
        case 3:
            //scissors
            CPUImageOutlet.image = UIImage(named: "output-onlinepngtools-4")
            AppData.CPU_Wins += 1
            thisLose += 1
            winDisplayLabel.text = "CPU Wins!"
            CPU_WinsLabel.text = "CPU Wins: \(thisLose)"
        default:
            AppData.PlayerWin = AppData.PlayerWin
        }
        ComputerRandomNum = Int.random(in: 1...3)
    }
    
    override func viewWillDisappear(_ animated: Bool) {        
        AppData.numberOfGamesPlayed += 1
        AppData.wins.append(thisWin)
        AppData.draws.append(thisDraw)
        AppData.loses.append(thisLose)
        
    }
    
}
