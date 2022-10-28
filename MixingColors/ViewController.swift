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
        
        setupRedSlider()
        setupGreenSlider()
        setupBlueSlider()
        
        
        colorView.layer.cornerRadius = 15
        
        redLabel.textColor = .red
        greenLabel.textColor = .green
        blueLabel.textColor = .blue
        
        redLabelValue.text = redSlider.value.rounded().formatted()
        greenLabelValue.text = greenSlider.value.formatted()
        blueLabelValue.text = blueSlider.value.formatted()

    }
    private func viewBackgroundcolor() {
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }


// MARK: - IB Actions
    
    @IBAction func redSliderAction() {
        redLabelValue.text = redSlider.value.formatted()
    }
    
    @IBAction func greenSliderAction() {
        greenLabelValue.text = greenSlider.value.formatted()
    }
    
    @IBAction func blueSliderAction() {
        blueLabelValue.text = blueSlider.value.formatted()
    }
    
    @IBAction func rgbColors() {
        viewBackgroundcolor()
    }
    
// MARK: - Private Methods
    private func setupRedSlider() {
        redSlider.minimumTrackTintColor = .red
        redSlider.value = 0
        redSlider.maximumValue = 1
        redSlider.minimumValue = 0
        
    }
    private func setupGreenSlider() {
        greenSlider.minimumTrackTintColor = .green
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        greenSlider.value = 0
    }
    private func setupBlueSlider() {
        blueSlider.minimumTrackTintColor = .blue
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        blueSlider.value = 0
    }
    
}

