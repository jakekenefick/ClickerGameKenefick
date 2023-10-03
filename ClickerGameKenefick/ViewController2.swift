//
//  ViewController2.swift
//  ClickerGameKenefick
//
//  Created by JAKE KENEFICK on 10/2/23.
//

import UIKit

class ViewController2: UIViewController {
    //Creating a variable to give me acces to first view controller
    var delegate : ViewController!
    
    @IBOutlet weak var points2Outlet: UILabel!
    
    var score2 : Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        points2Outlet.text = "Points:\(score2!)"
        self.title = "THE STORE!!!"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func PointsAction(_ sender: UIButton) {
        
        performSegue(withIdentifier: "BackToOne", sender: self)
        func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            
            let abc = segue.destination as! ViewController
            abc.score =  score2
            delegate.score = score2
            
        }
    }
    
    
    @IBAction func pointsAction(_ sender: UIButton) {
        performSegue(withIdentifier: "BackToOne", sender: self)
        func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            
            let abc = segue.destination as! ViewController
            abc.score =  score2
            delegate.score = score2
            print("A")
        }
        
        /*
         // MARK: - Navigation
         
         // In a storyboard-based application, you will often want to do a little preparation before navigation
         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
         }
         */
        
    }
}
