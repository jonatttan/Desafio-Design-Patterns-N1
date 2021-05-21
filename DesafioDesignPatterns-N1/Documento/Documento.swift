//
//  Documento.swift
//  DesafioDesignPatterns-N1
//
//  Created by Jonattan Moises Sousa on 18/05/21.
//

import Foundation

class Documento {
    
    // MARK: - Variaveis
    let documento: [Int]
    let verificador: Verificador
    
    // MARK: - Inicializador
    init(_ documento: [Int], _ verificador: Verificador) {
        self.documento = documento
        self.verificador = verificador
    }
}
