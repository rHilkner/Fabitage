//
//  User.swift
//  FabiDoctor
//
//  Created by Rodrigo Hilkner on 25/08/18.
//  Copyright © 2018 Rodrigo Hilkner. All rights reserved.
//

import Foundation

class User {

    var name: String?
    var birthDate: Date?

    // Medical data collected
    var heights: [Height] = [] // graf
    var weights: [Weight] = [] // graf
    var imcs: [IMC] = [] // graf
    var bloodExams: [BloodExam] = [] // graf --treta, mock pls
    var medicines: [Medicine] = [] // graf
    var symptoms: [Symptom] = [] // graf??
    var alergies: [Alergy] = []
    var vaccines: [Vaccine] = [] // collect

    // todos tem table view e botao de adicionar na navbar


    // Telas:
    // 1. CollectionView
    // 2. Graf + TableView
    // 3. TableView

    // Fazer método genérico p/ 

}
