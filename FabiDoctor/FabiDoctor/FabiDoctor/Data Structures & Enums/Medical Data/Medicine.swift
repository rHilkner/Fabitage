//
//  Medicine.swift
//  FabiDoctor
//
//  Created by Rodrigo Hilkner on 25/08/18.
//  Copyright © 2018 Rodrigo Hilkner. All rights reserved.
//

import Foundation

struct Medicine {
    var name: String
    var barcode: Int?
    var dosage: Double?
    var measureUnit: String?
    var dateStart: Date
    var dateEnd: Date?
}
