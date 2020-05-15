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
    
    var userChoice: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("User selected: \(userChoice)")
        // Do any additional setup after loading the view.
    }

    @IBAction func playAgain(){
        dismiss(animated: true, completion: nil)
    }

}
