//
//  Verificador.swift
//  DesafioDesignPatterns-N1
//
//  Created by Jonattan Moises Sousa on 18/05/21.
//

import Foundation

class Verificador {
    // MARK: - Variaveis
    private let documento: String
    
    // MARK: - Inicializador
    init(_ documento: String) {
        self.documento = documento
    }
    
    // MARK: - Procedimentos
    func verifica() -> String {
        return imprimeResultado(verificaValidade())
    }
    func verificaValidade() -> Bool {
        var valido = true
        valido = documento.count > 8 ? true : false
        return valido
    }
    func transformaParaArrayDeInt() -> [Int] {
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
    func comparaDigitosVerificadores(_ first: Int, _ second: Int, _ dv: Array<Int>.SubSequence) -> Bool {
        if first == dv.first {
            if second == dv.last {
                return true
            }
        }
        return false
    }
    func imprimeResultado(_ statusDocumento: Bool) -> String {
        return ("\(statusDocumento ? "Válido" : "Inválido")")
    }
}
