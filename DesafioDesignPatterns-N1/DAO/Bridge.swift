//
//  Bridge.swift
//  DesafioDesignPatterns-N1
//
//  Created by Jonattan Moises Sousa on 20/05/21.
//

import UIKit

class Bridge {
    
    private var tipo: Int = -2
    private var arrayDoc: [Int] = []
    
    func create(_ doc: String) -> Documento {
        tipo = verificaTipoDeDoc(doc: doc)
        let arrayDoc = transformaParaArrayDeInt(doc)
        switch tipo {
        case 1:
            return CPF(arrayDoc)
        case 2:
            return CNPJ(arrayDoc)
        default:
            return Documento(arrayDoc, Verificador(arrayDoc))
        }
    }
    func criaEChecaValidade(_ numeroDocumento: String) -> String {
        tipo = verificaTipoDeDoc(doc: numeroDocumento)
        arrayDoc = transformaParaArrayDeInt(numeroDocumento)
        if tipo == 0 {
            return ""
        }
        else if tipo == -1 {
            return "Dado insuficiente"
        }
        else if arrayDoc == [0,0,0,0,0] {
            return "Forneça apenas números"
        }
        else if verificaSequenciaNumerosIguais(arrayDoc) {
            return "Sequência inválida"
        }
        else {
            let objDoc = create(numeroDocumento)
            return "\(type(of: objDoc)) \(objDoc.verificador.verifica())"
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
