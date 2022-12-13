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
    
    var ComputerRandomNum = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ComputerRandomNum = Int.random(in: 1...3)
        
        playerWinsLabel.text = "Player Wins: \(AppData.PlayerWin)"
        drawsLabel.text = "Draws: \(AppData.CPUvsPlayerDraws)"
        CPU_WinsLabel.text = "CPU Wins: \(AppData.CPU_Wins)"
    }

    
    @IBAction func rockButton(_ sender: Any) {
        switch ComputerRandomNum {
        case 1:
            //rock
            CPUImageOutlet.image = UIImage(named: "output-onlinepngtools")
            AppData.CPUvsPlayerDraws += 1
            winDisplayLabel.text = "Draw!"
            drawsLabel.text = "Draws: \(AppData.CPUvsPlayerDraws)"
        case 2:
            //paper
            CPUImageOutlet.image = UIImage(named: "output-onlinepngtools-2")
            AppData.CPU_Wins += 1
            winDisplayLabel.text = "CPU Wins!"
            CPU_WinsLabel.text = "CPU Wins: \(AppData.CPU_Wins)"
        case 3:
            //scissors
            CPUImageOutlet.image = UIImage(named: "output-onlinepngtools-4")
            AppData.PlayerWin += 1
            winDisplayLabel.text = "Player Wins!"
            playerWinsLabel.text = "Player Wins: \(AppData.PlayerWin)"
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
            winDisplayLabel.text = "CPU Wins!"
            CPU_WinsLabel.text = "CPU Wins: \(AppData.CPU_Wins)"
        case 2:
            //paper
            CPUImageOutlet.image = UIImage(named: "output-onlinepngtools-2")
            AppData.PlayerWin += 1
            winDisplayLabel.text = "Player Wins!"
            playerWinsLabel.text = "Player Wins: \(AppData.PlayerWin)"
        case 3:
            //scissors
            CPUImageOutlet.image = UIImage(named: "output-onlinepngtools-4")
            AppData.CPUvsPlayerDraws += 1
            winDisplayLabel.text = "Draw!"
            drawsLabel.text = "Draws: \(AppData.CPUvsPlayerDraws)"
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
            winDisplayLabel.text = "Player Wins!"
            playerWinsLabel.text = "Player Wins: \(AppData.PlayerWin)"
        case 2:
            //paper
            CPUImageOutlet.image = UIImage(named: "output-onlinepngtools-2")
            AppData.CPUvsPlayerDraws += 1
            winDisplayLabel.text = "Draw!"
            drawsLabel.text = "Draws: \(AppData.CPUvsPlayerDraws)"
        case 3:
            //scissors
            CPUImageOutlet.image = UIImage(named: "output-onlinepngtools-4")
            AppData.CPU_Wins += 1
            winDisplayLabel.text = "CPU Wins!"
            CPU_WinsLabel.text = "CPU Wins: \(AppData.CPU_Wins)"
        default:
            AppData.PlayerWin = AppData.PlayerWin
        }
        ComputerRandomNum = Int.random(in: 1...3)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        //save stats here and reset wins/draw/lose record to all 0, record curr stats as a game on the stat page
    }
    
}
