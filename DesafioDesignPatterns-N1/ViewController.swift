//
//  ViewController.swift
//  DesafioDesignPatterns-N1
//
//  Created by Jonattan Moises Sousa on 18/05/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lbNumeroDocumento: UITextField!
    
    @IBOutlet weak var lbStatusDoc: UILabel!
    
    @IBAction func btnValidar(_ sender: UIButton) {
        guard let numeroDocumento = lbNumeroDocumento.text else { return }
        if numeroDocumento.count == 11 {
            cadastraCpf(numeroDocumento)
        }
        else if numeroDocumento.count == 14 {
            cadastraCnpj(numeroDocumento)
        }
        else {
            lbStatusDoc.text = "Qnt dígitos inválido"
        }
        lbStatusDoc.textColor = lbStatusDoc.text == "Válido" ? .green : .red
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        teste()
    }
    func cadastraCpf(_ doc: String) {
        lbStatusDoc.text = CPF(doc).verificador.verifica()
    }
    func cadastraCnpj(_ doc: String) {
        lbStatusDoc.text = CNPJ(doc).verificador.verifica()
    }
    
    func teste() {
        let documento1 = "24486510941"
        let documento2 = "08881145000150"
        let documento3 = "07624048000110"
        var listaOjbDoc: [Documento] = []
        listaOjbDoc.append(CPF(documento1))
        listaOjbDoc.append(CNPJ(documento2))
        listaOjbDoc.append(CNPJ(documento3))

        for obj in listaOjbDoc {
            obj.verificador.verifica()
        }
    }
    
}

