//
//  ViewController.swift
//  FabiDoctor
//
//  Created by Rodrigo Hilkner on 24/08/18.
//  Copyright © 2018 Rodrigo Hilkner. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func loginButtonPressed() {
        // Perform authentication
        self.performSegue(withIdentifier: SegueIds.mainTabBar.rawValue, sender: nil)
    }

}

