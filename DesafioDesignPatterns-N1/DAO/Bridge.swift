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
    func criaEChecaValidade(_ numeroDocumento: String) -> String {
        let tipo = verificaTipoDeDoc(doc: numeroDocumento)
        let arrayDoc = transformaParaArrayDeInt(numeroDocumento)
        if tipo == 0 {
            return ""
        }
        else if arrayDoc == [0,0,0,0,0] {
            return "Forneça apenas números."
        }
        else if verificaSequenciaNumerosIguais(arrayDoc) {
            return "Sequência inválida."
        }
        else {
            switch tipo {
            case -1:
                return "Dado insuficiente"
            case 1:
                return "CPF \(CPF(numeroDocumento).verificador.verifica())"
            default:
                return "CNPJ \(CNPJ(numeroDocumento).verificador.verifica())"
            }
        }
    }
    func verificaTipoDeDoc(doc: String) -> Int {
        switch (doc.count) {
        case 0:
            return 0
        case 11:
            return 1
        case 14:
            return 2
        default:
            return -1
        }
//        if doc.count == 11 {
//            return 1
//        }
//        else if doc.count == 14 {
//            return 2
//        }
//        return 0
    }
    func transformaParaArrayDeInt(_ documento: String) -> [Int] {
        let array = documento.map { Int(String($0)) }
        guard let retorno = array as? [Int] else { return [0,0,0,0,0] }
        return retorno
    }
    func verificaSequenciaNumerosIguais(_ arrayInt: [Int]) -> Bool {
        var contaRepeticao = 0
        for i in arrayInt {
            if i == arrayInt[0] {
                contaRepeticao += 1
            }
        }
        return arrayInt.count == contaRepeticao
    }
}
