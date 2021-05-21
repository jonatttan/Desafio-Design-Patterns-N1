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
        btnValidar(UIButton())
    }
    // MARK: - IBActions
    @IBAction func btnValidar(_ sender: UIButton) {
        guard let numeroDocumento = lbNumeroDocumento.text else { return }
        
        lbStatusDoc.text = Bridge().criaEChecaValidade(numeroDocumento)
        if let texto = lbStatusDoc.text {
            lbStatusDoc.textColor = texto.contains(" válido") ? .systemGreen : .systemRed
        }
    }
}

