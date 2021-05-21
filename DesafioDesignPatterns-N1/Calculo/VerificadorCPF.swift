//
//  VerificadorCPF.swift
//  DesafioDesignPatterns-N1
//
//  Created by Jonattan Moises Sousa on 18/05/21.
//

import Foundation

class VerificadorCPF: Verificador, VerificadorProtocol {
    
    override init(_ documento: String) {
        super.init(documento)
        setValues()
    }
    func setValues() {
        super.setValues(transformaParaArrayDeInt(doc)[0...8], transformaParaArrayDeInt(doc)[9...10], [1,2,3,4,5,6,7,8,9])
    }
    
    // MARK: - Procedimentos
    
}
