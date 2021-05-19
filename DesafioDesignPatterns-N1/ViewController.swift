//
//  ViewController.swift
//  DesafioDesignPatterns-N1
//
//  Created by Jonattan Moises Sousa on 18/05/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lbNumeroDocumento: UITextField!
    
    @IBAction func btnValidar(_ sender: UIButton) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        teste()
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

