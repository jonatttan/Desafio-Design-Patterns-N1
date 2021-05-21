//
//  Verificador.swift
//  DesafioDesignPatterns-N1
//
//  Created by Jonattan Moises Sousa on 18/05/21.
//

import Foundation

public protocol VerificadorProtocol {
    func setValues()
}
class Verificador {
    // MARK: - Variaveis
    let doc: String
    var verificador: Array<Int>.SubSequence = []
    var primeirosDigitos: Array<Int>.SubSequence = []
    var baseDeMultiplicar: [Int] = []
    
    // MARK: - Inicializador
    init(_ documento: String) {
        self.doc = documento
    }
    func setValues(_ primeirosDigitos: Array<Int>.SubSequence, _ verificador: Array<Int>.SubSequence, _ baseMultiplicacao: [Int]) {
        self.verificador = verificador
        self.primeirosDigitos = primeirosDigitos
        self.baseDeMultiplicar = baseMultiplicacao
    }
    
    // MARK: - Procedimentos
    func verifica() -> String {
        return imprimeResultado(verificaValidade())
    }
    func transformaParaArrayDeInt(_ documento: String) -> [Int] {
        let array = documento.map { Int(String($0)) }
        guard let retorno = array as? [Int] else { return [0] }
        return retorno
    }
    func calculoPrimeiroDigito(_ digitos: Array<Int>.SubSequence, _ baseDeMultiplicar: [Int]) -> Int {
        var val = 0
        var cont = 0
        while cont < digitos.count {
            val += (digitos[cont] * baseDeMultiplicar[cont])
            cont += 1
        }
        val %= 11
        return val
    }
    func calculoSegundoDigito(_ digitos: Array<Int>.SubSequence, _ primeiroResultado: Int, _ baseDeMultiplicar: [Int]) -> Int {
        var digitos = digitos
        var multiplicadores = baseDeMultiplicar
        // fazer a lógica.
        digitos.append(primeiroResultado)
        multiplicadores.insert((multiplicadores[0] - 1), at: 0)
        var val = 0
        var count = 0
        for valor in digitos {
            val += valor * multiplicadores[count]
            count += 1
        }
        val %= 11
        val = val == 10 ? 0 : val
        return val
    }
    func verificaValidade() -> Bool {
        let primeiroDigito = calculoPrimeiroDigito(primeirosDigitos, baseDeMultiplicar)
        let segundoDigito = calculoSegundoDigito(primeirosDigitos, primeiroDigito, baseDeMultiplicar)
        
        return comparaDigitosVerificadores(primeiroDigito, segundoDigito, verificador)
    }
    func comparaDigitosVerificadores(_ first: Int, _ second: Int, _ dv: Array<Int>.SubSequence) -> Bool {
        if first == dv.first {
            if second == dv.last {
                return true
            }
        }
        return false
    }
    func imprimeResultado(_ statusDocumento: Bool) -> String {
        return ("\(statusDocumento ? "válido" : "inválido")")
    }
}
