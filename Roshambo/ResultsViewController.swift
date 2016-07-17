//
//  ResultsViewController.swift
//  Roshambo
//
//  Created by Jeanne Pascua on 6/30/16.
//  Copyright © 2016 Jeanne Pascua. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    
    @IBOutlet weak var result: UILabel!
    
    var playerSelection: Int?
    var computerSelection: Int?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        // Player selects rock
        if (playerSelection == 0) {
            if (computerSelection == 0) {
                self.result.text = "Computer selects rock. Tie!"
            } else if (computerSelection == 1) {
                self.result.text = "Computer selects paper. You lose."
            } else if (computerSelection == 2) {
                self.result.text = "Computer selects scissors. You win!"
            }
        // Player selects paper
        } else if (playerSelection == 1) {
            if (computerSelection == 0) {
                self.result.text = "Computer selects rock. You win!"
            } else if (computerSelection == 1) {
                self.result.text = "Computer selects paper. Tie!"
            } else if (computerSelection == 2) {
                self.result.text = "Computer selects scissors. You lose."
            }
        // Player selects scissors
        } else if (playerSelection == 2) {
            if (computerSelection == 0) {
                self.result.text = "Computer selects rock. You lose."
            } else if (computerSelection == 1) {
                self.result.text = "Computer selects paper. You win!"
            } else if (computerSelection == 2) {
                self.result.text = "Computer selects scissors. Tie!"
            }
        }
    }
    
    @IBAction func playAgainButtonPressed() {
        if let navigationController = self.navigationController {
            navigationController.popViewControllerAnimated(true)
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
