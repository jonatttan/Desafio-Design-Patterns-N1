//
//  VerificadorCNPJ.swift
//  DesafioDesignPatterns-N1
//
//  Created by Jonattan Moises Sousa on 18/05/21.
//

import Foundation

class VerificadorCNPJ: Verificador {
    
    // MARK: - Procedimentos
    override func verificaValidade() -> Bool {
        let doc = transformaParaArrayDeInt()
        let verificador = doc[12...13]
        let primeirosDigitos = doc[0...11]
        let baseDeMultiplicar = [6,7,8,9,2,3,4,5,6,7,8,9]
        let primeiroDigito = calculoPrimeiroDigito(primeirosDigitos, baseDeMultiplicar)
        let segundoDigito = calculoSegundoDigito(primeirosDigitos, primeiroDigito, baseDeMultiplicar)
        
        return comparaDigitosVerificadores(primeiroDigito, segundoDigito, verificador)
    }
    
}
