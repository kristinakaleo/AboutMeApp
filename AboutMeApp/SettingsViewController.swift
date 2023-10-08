//
//  SettingsViewController.swift
//  AboutMeApp
//
//  Created by Кристина on 08.10.2023.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var helloUser: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func logOutButtonPressed(_ sender: Any) {
        dismiss(animated: true)
    }
}



