//
//  ViewController.swift
//  DesafioDesignPatterns-N1
//
//  Created by Jonattan Moises Sousa on 18/05/21.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var lbNumeroDocumento: UITextField!
    @IBOutlet weak var lbStatusDoc: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - IBActions
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
    func cadastraCpf(_ doc: String) {
        lbStatusDoc.text = CPF(doc).verificador.verifica()
    }
    func cadastraCnpj(_ doc: String) {
        lbStatusDoc.text = CNPJ(doc).verificador.verifica()
    }
    
}

