//
//  ViewController.swift
//  SevostianovaEP_HW 2.2
//
//  Created by RusLab on 14.11.2019.
//  Copyright © 2019 RusLab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var viewColor: UIView!
    
    
    @IBOutlet weak var textRed: UITextField!
    @IBOutlet weak var textGreen: UITextField!
    @IBOutlet weak var textBlue: UITextField!
    
  
    @IBOutlet var numberRed: UILabel!
    @IBOutlet var numberGreen: UILabel!
    @IBOutlet var numberBlue: UILabel!
    
   
    @IBOutlet var textFieldRed: UITextField!
    @IBOutlet var textFieldGreen: UITextField!
    @IBOutlet var textFieldBlue: UITextField!
    
    
    @IBOutlet var sliderRed: UISlider!{
        didSet{
            sliderRed.tintColor  = UIColor.red
        }
        
    }
    
    @IBOutlet var sliderGreen: UISlider!{
        didSet{
            sliderGreen.tintColor  = UIColor.red
            
        }
    }
    
    @IBOutlet var sliderBlue: UISlider!{
        didSet{
            sliderBlue.tintColor  = UIColor.red
            
        }
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      var sliderRed: UISlider!{
            didSet{
                sliderRed.tintColor  = UIColor.red
            }
            
        }
        
        var sliderGreen: UISlider!{
            didSet{
                sliderGreen.tintColor  = UIColor.red
                
            }
        }
        
       var sliderBlue: UISlider!{
            didSet{
                sliderBlue.tintColor  = UIColor.red
                
            }
        }
        

        //text
        textRed.text = "Red"
        textGreen.text = "Green"
        textBlue.text = "Blue"
        
        
      
        
    }
    
    @IBAction func redSliderAction(_ sender: UISlider) {
        numberRed.text = String(Int(sender.value))
        textFieldRed.text = String(Int(sender.value))
        sliderRed.minimumValue = 0
        sliderRed.maximumValue = 255
        
        
    }
    
    @IBAction func greenSliderAction(_ sender: UISlider) {
        numberGreen.text = String(Int(sender.value))
        textFieldGreen.text = String(Int(sender.value))
        sliderGreen.minimumValue = 0
        sliderGreen.maximumValue = 255
    }
    
    
    @IBAction func blueSliderAction(_ sender: UISlider) {
        numberBlue.text = String(Int(sender.value))
        textFieldBlue.text = String(Int(sender.value))
        sliderBlue.minimumValue = 0
        sliderBlue.maximumValue = 255
    }
    
    
    
    
    func changeColor() {
        viewColor.backgroundColor = UIColor(red: CGFloat(sliderRed.value), green: CGFloat(sliderGreen.value), blue: CGFloat(sliderBlue.value), alpha: 1)
    }
    
    
  

    @IBAction func rgbChange(_ sender: Any) {
        changeColor()
    }
    
    
    
    
  
    

}






