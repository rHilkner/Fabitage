//
//  AddSymptomViewController.swift
//  FabiDoctor
//
//  Created by Rodrigo Hilkner on 25/08/18.
//  Copyright © 2018 Rodrigo Hilkner. All rights reserved.
//

import UIKit

class AddSymptomViewController: UIViewController {

    var bodyInfo: BodyInfo?

    @IBOutlet weak var painSlider: UISlider!
    @IBOutlet weak var noteTextLabel: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!

    override func viewDidLoad() {
        super.viewDidLoad()

        if self.bodyInfo == nil {
            print("-> WARNING: Body part for symptom is nil")
            self.dismiss(animated: true, completion: nil)
        }

        self.navigationItem.title = self.bodyInfo!.rawValue
        self.datePicker.date = Date()
    }

}


extension AddSymptomViewController {

    @IBAction func doneButtonPressed() {
        let painValue = Double(self.painSlider.value)
        let note = self.noteTextLabel.text
        let date = self.datePicker.date
        let symptom = Symptom(bodyInfo: self.bodyInfo!, painValue: painValue, note: note, date: date)
        let userServices = UserServices()
        userServices.add(symptom: symptom)
    }

}
