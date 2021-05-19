//
//  VerificadorCPF.swift
//  DesafioDesignPatterns-N1
//
//  Created by Jonattan Moises Sousa on 18/05/21.
//

import Foundation

class VerificadorCPF: Verificador {
    override func verificaValidade() -> Bool {
        let doc = transformaParaArrayDeInt()
        let verificador = doc[9...10]
        let primeirosDigitos = doc[0...8]
        let baseDeMultiplicar = [1,2,3,4,5,6,7,8,9]
        let primeiroDigito = calculoPrimeiroDigito(primeirosDigitos, baseDeMultiplicar)
        let segundoDigito = calculoSegundoDigito(primeirosDigitos, primeiroDigito, baseDeMultiplicar)
        
        if primeiroDigito == verificador.first {
            if segundoDigito == verificador.last {
                return true
            }
        }
        return false
    }
}
