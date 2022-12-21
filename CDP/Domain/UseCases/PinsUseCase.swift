//
//  PinsUseCase.swift
//  CDP
//
//  Created by Deepak Singh07 on 11/25/22.
//

import Foundation

struct PinsUseCase: PinUseCaseProtocol {
    private var pinUseCaseRepository: PinRepositoryProtocol
    init(pinUseCaseRepository: PinRepositoryProtocol = PinCoreDataRepository()) {
        self.pinUseCaseRepository = pinUseCaseRepository
    }
    
    func savePin(pin: PinModel) {
        self.pinUseCaseRepository.savePin(pin: pin)
    }
}
