//
//  CPF.swift
//  DesafioDesignPatterns-N1
//
//  Created by Jonattan Moises Sousa on 18/05/21.
//

import Foundation

class CPF: Documento {
    
    init(_ documento: String) {
        super.init(documento, VerificadorCPF(documento))
    }
}