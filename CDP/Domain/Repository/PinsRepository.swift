//
//  PinsRepository.swift
//  CDP
//
//  Created by Deepak Singh07 on 11/25/22.
//

import Foundation



struct PinCoreDataRepository: PinRepositoryProtocol {
    func savePin(pin: PinModel) {
        let cdPinModel = SavedPins(context: PersistantStorage.shared.context)
        cdPinModel.pin = Int16(pin.key)
        cdPinModel.pinName = pin.keyName
        PersistantStorage.shared.saveContext()
    }
    
    func getAllPins() -> [PinModel]?{
        return nil
    }
    
    func fetchPin(with id: Int){
        
    }
    
    func deletePin(with id: Int){
        
    }
}
