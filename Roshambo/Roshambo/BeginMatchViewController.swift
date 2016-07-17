//
//  ViewController.swift
//  Roshambo
//
//  Created by Jeanne Pascua on 6/30/16.
//  Copyright © 2016 Jeanne Pascua. All rights reserved.
//

import UIKit

class BeginMatchViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func computerSelection() -> Int {
        let randomValue = arc4random() % 3
        
        return Int(randomValue)
    }

    @IBAction func selectRock() {
        var controller: ResultsViewController
        
        controller = self.storyboard?.instantiateViewControllerWithIdentifier("ResultsViewController") as! ResultsViewController
        
        controller.playerSelection = 0
        controller.computerSelection = self.computerSelection()
        
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    
    
    @IBAction func selectPaper() {
        performSegueWithIdentifier("showResult1", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let controller = segue.destinationViewController as! ResultsViewController
        if segue.identifier == "showResult1" {
            controller.playerSelection = 1
        } else if segue.identifier == "showResult2" {
            controller.playerSelection = 2
        }
        controller.computerSelection = self.computerSelection()
    }

}

