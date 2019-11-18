//
//  ViewController.swift
//  SevostianovaEP_HW 2.2
//
//  Created by RusLab on 14.11.2019.
//  Copyright © 2019 RusLab. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    
    @IBOutlet var viewColor: UIView!
    
    
  
    @IBOutlet weak var labelRed: UILabel!
    @IBOutlet weak var labelGreen: UILabel!
    @IBOutlet weak var labelBlue: UILabel!
    
    
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
    
    @IBAction func redSliderAction(_ sender: UISlider) {
        numberRed.text = String(Int(sender.value))
        textFieldRed.text = String(Int(sender.value))
       
        
        
    }
    
    @IBAction func greenSliderAction(_ sender: UISlider) {
        numberGreen.text = String(Int(sender.value))
        textFieldGreen.text = String(Int(sender.value))
      
    }
    
    
    @IBAction func blueSliderAction(_ sender: UISlider) {
        numberBlue.text = String(Int(sender.value))
        textFieldBlue.text = String(Int(sender.value))
        
    }
    

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == self.textFieldRed {
            numberRed.text = textFieldRed.text
            sliderRed.value = Float(textFieldRed.text) ?? 0
        } else if textField == self.textFieldGreen {
            numberGreen.text = textFieldGreen.text
            sliderRed.value = Float(textFieldGreen.text) ?? 0
        } else if textField == self.textFieldBlue {
           numberBlue.text = textFieldBlue.text
            sliderRed.value = Float(textFieldGreen.text) ?? 0
        
        textField.resignFirstResponder()
        return true
    }
    changeColor()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
  
    


        //text
        labelRed.text = "Red"
        labelGreen.text = "Green"
        labelBlue.text = "Blue"
        
        sliderRed.minimumValue = 0
        sliderRed.maximumValue = 255
        
        sliderGreen.minimumValue = 0
        sliderGreen.maximumValue = 255
        
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






