//
//  ViewController.swift
//  ClickerGameKenefick
//
//  Created by JAKE KENEFICK on 10/2/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ScoreOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var score = 0

    @IBAction func ClickAction(_ sender: Any) {
        score += 1
        ScoreOutlet.text = "\(score)"
    }
   
}

