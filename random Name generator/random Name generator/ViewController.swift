//
//  ViewController.swift
//  random Name generator
//
//  Created by Sri Charan on 25/09/23.
//

import UIKit

class ViewController: UIViewController {
    
    let Array = ["Tiger", "Lion", "Elephant", "Wolf"]
    var set: Set<String> = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBOutlet weak var image: UIImageView!
    

    
    @IBAction func GeneratePhoto(_ sender: UIButton) {
        var s = Array[Int.random(in: 0..<Array.count)]
        if !set.contains(s) {
            image.image = UIImage(named: s)
            set.insert(s)
        }
        if s.count == Array.count{
            set = []
        }
        
    }
    
}

