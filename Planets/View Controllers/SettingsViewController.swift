//
//  SettingsViewController.swift
//  Planets
//
//  Created by Craig Swanson on 10/9/19.
//  Copyright © 2019 Lambda Inc. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var shouldShowPlutoSwitch: UISwitch!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()

        // Do any additional setup after loading the view.
    }
    
    private func updateViews() {
        guard isViewLoaded else { return }
        
        let userDefaults = UserDefaults.standard
        shouldShowPlutoSwitch.isOn = userDefaults.bool(forKey: .shouldShowPlutoKey)
    }
    
    @IBAction func changeShouldShowPluto(_ sender: UISwitch) {
        let userDefaults = UserDefaults.standard
        userDefaults.set(shouldShowPlutoSwitch.isOn, forKey: .shouldShowPlutoKey)
    }

}
