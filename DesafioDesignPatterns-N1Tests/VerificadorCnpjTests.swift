//
//  VerificadorCnpj.swift
//  DesafioDesignPatterns-N1Tests
//
//  Created by Jonattan Moises Sousa on 21/05/21.
//

import XCTest
@testable import DesafioDesignPatterns_N1


class VerificadorCnpjTests: XCTestCase {
    
    var objCnpj: Documento!
    var contador: Int!
    override func setUp() {
        objCnpj = CNPJ("79270349000101")
    }
    
    override func tearDown() {
        contador = 0
    }
    func testDocDeveconter14Digitos() {
        let contaDigitos = objCnpj.documento.count
        XCTAssertEqual(14, contaDigitos, "Documento nao possuia quantidade de digitos indicada.")
    }
    func testPrimeirosDigitosDeveConter12Digitos() {
        contador = objCnpj.verificador.primeirosDigitos.count
        let verificaSePreenchido =  contador > 0 ? true : false
        XCTAssertTrue(verificaSePreenchido, "O atributo primeirosDigitos encontra-se vazio.")
        XCTAssertEqual(12, contador, "O atributo primeirosDigitos nao possui a quantidade especificada.")
    }
    func testAtributoDigitoVerificadorDeveConter2Digitos() {
        contador = objCnpj.verificador.digitoVerificador.count
        XCTAssertEqual(2, contador, "O atributo digitoVerificador nao contem quantidade especificada.")
    }
    func testBaseDeMultiplicarDeveConter12Digitos() {
        contador = objCnpj.verificador.baseDeMultiplicar.count
        XCTAssertEqual(12, contador, "O atributo baseDeMultiplicar nao contem a quantidade especificada.")
    }
}
