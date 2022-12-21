//
//  PinRepositoryProtocol.swift
//  CDP
//
//  Created by Deepak Singh07 on 11/28/22.
//

import Foundation

protocol PinRepositoryProtocol{
    func savePin(pin: PinModel)
    func getAllPins() -> [PinModel]?
}
