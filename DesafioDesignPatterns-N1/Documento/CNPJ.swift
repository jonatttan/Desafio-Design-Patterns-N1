//
//  CNPJ.swift
//  DesafioDesignPatterns-N1
//
//  Created by Jonattan Moises Sousa on 18/05/21.
//

import Foundation

class CNPJ: Documento {
    
    // MARK: - Inicializador
    init(_ documento: String) {
        super.init(documento, VerificadorCNPJ(documento))
    }
}
