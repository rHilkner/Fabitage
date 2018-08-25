//
//  AddVaccineViewController.swift
//  FabiDoctor
//
//  Created by Rodrigo Hilkner on 25/08/18.
//  Copyright © 2018 Rodrigo Hilkner. All rights reserved.
//

import UIKit

class AddVaccineViewController: UIViewController {

    @IBOutlet weak var typeTextField: UITextField!
    @IBOutlet weak var localTextField: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.backBarButtonItem?.title = ""
        self.navigationItem.title = "Adicionar vacina"
        self.datePicker.date = Date()
    }

    @IBAction func doneButtonPressed() {
        guard let vaccineType = self.typeTextField.text, vaccineType != "" else {
            print("-> WARNING: Vaccine type in nil")
            return
        }

        let local = self.localTextField.text
        let date = self.datePicker.date
        let vaccine = Vaccine(type: vaccineType, local: local, date: date)
        let userServices = UserServices()
        userServices.add(vaccine: vaccine)
        self.dismiss(animated: true, completion: nil)
    }

}
