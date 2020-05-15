//
//  ViewController.swift
//  RockPaperScissors
//
//  Created by Paul on 15/05/2020.
//  Copyright © 2020 Paul. All rights reserved.
//

import UIKit

class ChooseViewController: UIViewController {


    @IBAction func onRockClick(_ sender: UIButton) {
        let controller : ResultViewController = storyboard?.instantiateViewController(withIdentifier: "result" )
            as! ResultViewController
        
        controller.userChoice = sender.tag
        
        present(controller, animated: true, completion: nil)
    }
    
    @IBAction func onPaperClick(_ sender: UIButton) {
        performSegue(withIdentifier: "showResult", sender: sender)
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "scissorsToResult" || segue.identifier == "showResult" {
            let controller = segue.destination as! ResultViewController
            controller.userChoice = (sender as! UIButton).tag
        }
    }
}

