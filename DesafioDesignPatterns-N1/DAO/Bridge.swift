//
//  Bridge.swift
//  DesafioDesignPatterns-N1
//
//  Created by Jonattan Moises Sousa on 20/05/21.
//

import UIKit

class Bridge {
    
    func create(_ doc: String) -> Documento {
        if doc.count == 11 {
            return CPF(doc)
        }
        else if doc.count == 14 {
            return CNPJ(doc)
        }
        else {
            return Documento("doc", Verificador("doc"))
        }
    }
    func checaValidade(_ numeroDocumento: String) -> String {
        if numeroDocumento.count == 11 {
            return "CPF \(CPF(numeroDocumento).verificador.verifica())"
        }
        else if numeroDocumento.count == 14 {
            return "CNPJ \(CNPJ(numeroDocumento).verificador.verifica())"
        }
        else {
            return "Dado insuficiente."
        }
    }
}
