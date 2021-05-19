//
//  TelaViewCode.swift
//  DesafioDesignPatterns-N1
//
//  Created by Jonattan Moises Sousa on 19/05/21.
//

import UIKit

final class TelaViewCode: UIView {
    
    lazy var textLabel: UILabel = {
        let view = UILabel(frame: .zero)
        view.backgroundColor = .lightGray
        view.text = "Digite CPF ou CNPJ"
        return view
    }()
    
    lazy var inputText: UITextField = {
        let view = UITextField(frame: .zero)
        view.backgroundColor = .blue
        view.text = "sss"
        return view
    }()
    
    
}
