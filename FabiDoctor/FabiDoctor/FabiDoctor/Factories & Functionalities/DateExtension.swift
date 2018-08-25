//
//  DateExtension.swift
//  FabiDoctor
//
//  Created by Rodrigo Hilkner on 25/08/18.
//  Copyright © 2018 Rodrigo Hilkner. All rights reserved.
//

import Foundation

extension Date {

    func toString(dateFormat format: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.string(from: self)
    }

}
