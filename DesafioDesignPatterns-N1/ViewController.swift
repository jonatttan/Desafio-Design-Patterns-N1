//
//  ViewController.swift
//  DesafioDesignPatterns-N1
//
//  Created by Jonattan Moises Sousa on 18/05/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        teste()
    }
    
    func teste() {
        let documento1 = "24486510941"
        let documento2 = "08881145000150"
        let listaDoc = [documento1, documento2]
        var listaOjbDoc: [Documento] = []
        listaOjbDoc.append(CPF(documento1))
        listaOjbDoc.append(CNPJ(documento2))

        for obj in listaOjbDoc {
            obj.verificador.verifica()
        }
    }
}

