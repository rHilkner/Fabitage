//
//  UserServices.swift
//  FabiDoctor
//
//  Created by Rodrigo Hilkner on 25/08/18.
//  Copyright © 2018 Rodrigo Hilkner. All rights reserved.
//

import Foundation

class UserServices {

    func add(symptom: Symptom) {
        AppShared.user.symptoms.append(symptom)
    }

}
