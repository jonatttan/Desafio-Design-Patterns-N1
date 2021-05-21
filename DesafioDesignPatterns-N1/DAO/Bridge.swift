//
//  Bridge.swift
//  DesafioDesignPatterns-N1
//
//  Created by Jonattan Moises Sousa on 20/05/21.
//

import UIKit

class Bridge {
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
    func cadastraCpf(_ doc: String) -> String {
        return CPF(doc).verificador.verifica()
    }
    func cadastraCnpj(_ doc: String) -> String {
        return CNPJ(doc).verificador.verifica()
    }
}
