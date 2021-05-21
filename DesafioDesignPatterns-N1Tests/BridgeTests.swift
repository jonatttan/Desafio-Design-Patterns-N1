//
//  BridgeTest.swift
//  DesafioDesignPatterns-N1Tests
//
//  Created by Jonattan Moises Sousa on 21/05/21.
//

import XCTest
@testable import DesafioDesignPatterns_N1

class BridgeTests: XCTestCase {

    var documentoCorreto: String!
    var documentoIncorreto: String!
    var testador: Bridge!
    var doc: Documento!
    
    override func setUp() {
        documentoCorreto = "09437187088"
        documentoIncorreto = "09437187080"
        testador = Bridge()
    }

    override func tearDown() {
        documentoCorreto = ""
        documentoIncorreto = ""
        doc = nil
    }

    func testCpfRetornoDeveTerValidacaoComExito()  {
        XCTAssertEqual("CPF válido", testador.criaEChecaValidade(documentoCorreto), "Houve algum erro na validacao do CPF")
    }
    func testCpfRetornoDeveTerValidacaoSemExito()  {
        XCTAssertEqual("CPF inválido", testador.criaEChecaValidade(documentoIncorreto))
    }
    func testCnpjDeveRetornarValidacaoComExito() {
        documentoCorreto = "88773310000190"
        XCTAssertEqual("CNPJ válido", testador.criaEChecaValidade(documentoCorreto))
    }
    func testCnpjDeveRetornarValidacaoSemExito() {
        documentoIncorreto = "88773310000195"
        XCTAssertEqual("CNPJ inválido", testador.criaEChecaValidade(documentoIncorreto))
    }
    func testTipoDeveSerCPF() {
        documentoCorreto = "09437187088"
        let doc = testador.create(documentoCorreto)
        XCTAssertEqual("CPF", "\(type(of: doc))")
    }
    func testTipoDeveSerDocumento() { // Deve criar apenas quando numeros, melhorar isso
        documentoIncorreto = "9893"
        doc = testador.create(documentoIncorreto)
        XCTAssertEqual("Documento", "\(type(of: doc!))")
    }
    func testTipoDeveSerCNPJ() {
        documentoIncorreto = "88773310000195"
        doc = testador.create(documentoIncorreto)
        XCTAssertEqual("CNPJ", "\(type(of: doc!))")
    }
    func testDeveAcusarFornecerApenasNumeros() {
        documentoIncorreto = "khjkkkj"
        XCTAssertEqual("Forneça apenas números", testador.criaEChecaValidade(documentoIncorreto))
    }
    func testDeveRetornarSequenciaInvalida() {
        documentoIncorreto = "99999999"
        XCTAssertEqual("Sequência inválida", testador.criaEChecaValidade(documentoIncorreto))
    }
}
