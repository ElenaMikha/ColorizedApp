//
//  ViewController.swift
//  MixingColors
//
//  Created by Elena Mikhailova on 27.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - IB Outlets
    
    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redLabelValue: UILabel!
    @IBOutlet var greenLabelValue: UILabel!
    @IBOutlet var blueLabelValue: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorView.layer.cornerRadius = 15
        setColor()
        setValue(for: redLabelValue, greenLabelValue, blueLabelValue)
    }
    
    // MARK: - IB Actions
        
    @IBAction func rgbSliderAction(_ sender: UISlider) {
        setColor()
        switch sender {
        case redSlider:
            redLabelValue.text = string(from: redSlider)
        case greenSlider:
            greenLabelValue.text = string(from: greenSlider)
        default:
            blueLabelValue.text = string(from: blueSlider)
        }
    }
    
    // MARK: - Private Methods
    
    private func setColor() {
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value), alpha: 1
        )
    }
    
    private func setValue(for labels: UILabel...) {
        labels.forEach { label in
            switch label  {
            case redLabelValue:
                redLabelValue.text = string(from: redSlider)
            case greenLabelValue:
                greenLabelValue.text = string(from: greenSlider)
            default:
                blueLabelValue.text = string(from: blueSlider)
                
            }
        }
        
    }
    private func string(from slider: UISlider) -> String {
        String(format: "%.02f", slider.value)
    }
}

 
