//
//  Validator.swift
//  CDP
//
//  Created by Deepak Singh07 on 12/7/22.
//

import Foundation

struct Validator {
    
    static func isValidPin(input: String?) -> Bool{
        guard let pin = input else {
            return false
        }
        return (pin.count <=  4 && CharacterSet(charactersIn: pin).isSubset(of: CharacterSet.decimalDigits))
    }
    
    static func isValidPhoneNumber(input: String?) -> Bool{
        guard let phoneNumber = input else
        {
            return false
        }
        return CharacterSet(charactersIn: phoneNumber).isSubset(of: CharacterSet.decimalDigits) && phoneNumber.count == 10
    }
}
