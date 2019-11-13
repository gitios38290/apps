//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by mickael on 21/11/2018.
//  Copyright © 2018 mickael gomez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let  ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var randomBallNumber: Int = 0
    
    @IBOutlet weak var ballImageview: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        newBallImage()
        
    }

    @IBAction func askButtonPressed(_ sender: Any) {
        
        newBallImage()
        
        }
        
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
            
            newBallImage()
            
        }
    
    func newBallImage(){
        
        randomBallNumber = Int.random(in: 0...4)
        ballImageview.image = UIImage(named:ballArray[randomBallNumber] )
    
    }
    
}

