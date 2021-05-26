//
//  VerificadorCNPJ.swift
//  DesafioDesignPatterns-N1
//
//  Created by Jonattan Moises Sousa on 18/05/21.
//

import Foundation

class VerificadorCNPJ: Verificador, VerificadorProtocol {
    
    // MARK: - Inicializador
    override init(_ documento: [Int]) {
        super.init(documento)
        setValues()
    }
    // MARK: - Procedimentos
    func setValues() {
        super.setValues(doc[0...11], doc[12...13], [6,7,8,9,2,3,4,5,6,7,8,9])
    }
}
