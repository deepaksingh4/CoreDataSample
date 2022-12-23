//
//  String+Extension.swift
//  CDP
//
//  Created by Deepak Singh07 on 12/22/22.
//

import Foundation

extension String {
    
    var isValidEmail: Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", argumentArray: [emailRegEx])
        return emailPredicate.evaluate(with: self)
    }
}
