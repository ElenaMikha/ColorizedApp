//
//  ViewController.swift
//  MixingColors
//
//  Created by Elena Mikhailova on 27.10.2022.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet var colorView: UIView!

    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redLabelValue: UILabel!
    @IBOutlet var greenLabelValue: UILabel!
    @IBOutlet var blueLabelValue: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorView.layer.cornerRadius = 15
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        blueSlider.minimumTrackTintColor = .blue
        
        redLabel.textColor = .red
        greenLabel.textColor = .green
        blueLabel.textColor = .blue
     
    }

    @IBAction func redSliderAction() {
    }
    
    @IBAction func greenSliderAction() {
    }
    
    @IBAction func blueSliderAction() {
    }
    
}

