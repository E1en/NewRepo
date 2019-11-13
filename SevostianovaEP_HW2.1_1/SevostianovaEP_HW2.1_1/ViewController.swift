//
//  ViewController.swift
//  SevostianovaEP_HW2.1_1
//
//  Created by RusLab on 13.11.2019.
//  Copyright © 2019 RusLab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet var redView: UIView!
    
    @IBOutlet var yellowView: UIView!
    
    @IBOutlet var greenView: UIView!
    
    
    
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        redView.backgroundColor = .red
        redView.layer.cornerRadius = redView.frame.size.height/2
        redView.alpha = 0.5
        
        yellowView.backgroundColor = .yellow
        yellowView.layer.cornerRadius = yellowView.frame.size.height/2
        yellowView.alpha = 0.5
        
        
        greenView.backgroundColor = .green
        greenView.layer.cornerRadius = greenView.frame.size.height/2
        greenView.alpha = 0.5
        
        startButton.setTitle("Start", for: .normal)
        
    }
    
    @IBAction func startButtonPress() {
       
        
        if greenView.alpha == 1 {
            redView.alpha = 1
            yellowView.alpha = 0.5
            greenView.alpha = 0.5
        } else if redView.alpha == 1 {
            redView.alpha = 0.5
            yellowView.alpha = 1
            greenView.alpha = 0.5
        } else if yellowView.alpha == 1 {
            redView.alpha = 0.5
            yellowView.alpha = 0.5
            greenView.alpha = 1
        } else if redView.alpha == 0.5 {
            redView.alpha = 1
            yellowView.alpha = 0.5
            greenView.alpha = 0.5
            startButton.setTitle("Next", for: .normal)
        }
    }
    
    
    
}


