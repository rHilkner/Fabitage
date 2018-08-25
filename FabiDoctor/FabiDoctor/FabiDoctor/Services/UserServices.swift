//
//  UserServices.swift
//  FabiDoctor
//
//  Created by Rodrigo Hilkner on 25/08/18.
//  Copyright © 2018 Rodrigo Hilkner. All rights reserved.
//

import Foundation

class UserServices {

    func add(height: Height) {
        AppShared.user.heights.append(height)
    }

    func add(weight: Weight) {
        AppShared.user.weights.append(weight)
    }

    func add(imc: IMC) {
        AppShared.user.imcs.append(imc)
    }

    func add(symptom: Symptom) {
        AppShared.user.symptoms.append(symptom)
    }

    func add(bloodExam: BloodExam) {
        AppShared.user.bloodExams.append(bloodExam)
    }

    func add(alergie: Alergy) {
        AppShared.user.alergies.append(alergie)
    }

    func add(medicine: Medicine) {
        AppShared.user.medicines.append(medicine)
    }

    func add(vaccine: Vaccine) {
        AppShared.user.vaccines.append(vaccine)
    }

}
