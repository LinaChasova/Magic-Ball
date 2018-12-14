//
//  ViewController.swift
//  Magic Ball
//
//  Created by Алина Часова on 14/12/2018.
//  Copyright © 2018 LinaChasova. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ballImage: UIImageView!
    var ballImageNumber : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        
        displayImage()
        
    }
    
    func displayImage() {
        ballImageNumber = Int(arc4random_uniform(5) + 1)
        
        ballImage.image = UIImage(named: "ball\(ballImageNumber)")
    }
    
}

