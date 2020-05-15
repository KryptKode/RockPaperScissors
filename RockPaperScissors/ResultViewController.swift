//
//  ResultViewController.swift
//  RockPaperScissors
//
//  Created by Paul on 15/05/2020.
//  Copyright © 2020 Paul. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var resultImage: UIImageView!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    var choiceByUser: Int = 0
    var userChoice: Choice!
    var aiChoice: Choice!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userChoice = Choice(rawValue: choiceByUser)
        aiChoice = Choice(rawValue: randomValue())
                
        if(userChoice == aiChoice){
            updateImage("itsATie")
            updateMessage("It's a tie!")
        }else if (userChoice == Choice.Paper && aiChoice == Choice.Scissors){
            updateImage("ScissorsCutPaper")
            updateMessage("Scissors Cuts Paper. You lose!")
        }else if (userChoice == Choice.Scissors && aiChoice == Choice.Paper){
            updateImage("ScissorsCutPaper")
            updateMessage("Scissors Cuts Paper. You win!")
        }else if (userChoice == Choice.Rock && aiChoice == Choice.Paper){
            updateImage("PaperCoversRock")
            updateMessage("Paper Covers Rock. You lose!")
        }else if (userChoice == Choice.Paper && aiChoice == Choice.Rock){
            updateImage("PaperCoversRock")
            updateMessage("Paper Covers Rock. You win!")
        }else if (userChoice == Choice.Scissors && aiChoice == Choice.Rock){
            updateImage("RockCrushesScissors")
            updateMessage("Rock Crushes Scissors. You lose!")
        }else if (userChoice == Choice.Rock && aiChoice == Choice.Scissors){
            updateImage("RockCrushesScissors")
            updateMessage("Rock Crushes Scissors. You win!")
        }
    }
    
    private func updateImage(_ name:String){
       resultImage.image = UIImage(named: name)
    }
    
    private func updateMessage(_ message:String){
        resultLabel.text = message
    }
    
    private func randomValue() -> Int {
        // Generate a random Int32 using arc4Random
        let randomValue = arc4random() % 3
        
        // Return a more convenient Int, initialized with the random value
        return Int(randomValue)
    }
    
    
    @IBAction func playAgain(){
        dismiss(animated: true, completion: nil)
    }
    
}
