//
//  ViewController.swift
//  ClickerGameKenefick
//
//  Created by JAKE KENEFICK on 10/2/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ScoreOutlet: UILabel!
    
    var score :Int!
    override func viewDidLoad() {
        super.viewDidLoad()
        if(score == nil){score = 0}
        ScoreOutlet.text = "Points:\(score!)"
        if(score != nil){
            ScoreOutlet.text = "Points:\(score!)"}
        self.title = "CLICK THE BUTTON!!!!"
        // Do any additional setup after loading the view.
    }
    
    
    
    var multiply = 1

    
   
    @IBAction func ClickAction(_ sender: Any) {
        if(score == nil){score = 0}
        else{
            score += multiply
            ScoreOutlet.text = "Points:\(score!)"
        }
    }
   
    @IBAction func toStoreAction(_ sender: UIButton) {
        performSegue(withIdentifier: "toStore", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let nvc = segue.destination as! ViewController2
        nvc.score2 =  score
        nvc.delegate = self
    }
}

