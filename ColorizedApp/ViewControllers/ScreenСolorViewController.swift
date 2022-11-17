//
//  ScreenСolorViewController.swift
//  ColorizedApp
//
//  Created by Elena Mikhailova on 16.11.2022.
//

import UIKit

protocol SettingColorViewControllerDelegate {
    func setScreenColor (with color: UIColor)
}

class ScreenColorViewController: UIViewController {
    
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingColorViewController else { return }
        settingsVC.colors = view.backgroundColor
        settingsVC.delegate = self
    }

}
//MARK: - SettingColorViewControllerDelegate

extension ScreenColorViewController: SettingColorViewControllerDelegate {
    func setScreenColor (with color: UIColor) {
        view.backgroundColor = color
      
    }
}
