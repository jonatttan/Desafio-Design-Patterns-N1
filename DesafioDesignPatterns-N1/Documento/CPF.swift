//
//  CPF.swift
//  DesafioDesignPatterns-N1
//
//  Created by Jonattan Moises Sousa on 18/05/21.
//

import Foundation

class CPF: Documento {
    
    // MARK: - Inicializador
    init(_ documento: [Int]) {
        super.init(documento, VerificadorCPF(documento))
    }
}
