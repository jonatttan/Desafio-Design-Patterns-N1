//
//  Verificador.swift
//  DesafioDesignPatterns-N1
//
//  Created by Jonattan Moises Sousa on 18/05/21.
//

import Foundation

class Verificador {
    private let documento: String
    
    init(_ documento: String) {
        self.documento = documento
    }
    func verifica() {
        imprimeResultado(verificaValidade())
    }
    func verificaValidade() -> Bool {
        var valido = true
        valido = documento.count > 8 ? true : false
        return valido
    }
    func imprimeResultado(_ statusDocumento: Bool) {
        print("O documento \(documento) é \(statusDocumento ? "válido" : "inválido")")
    }
}
