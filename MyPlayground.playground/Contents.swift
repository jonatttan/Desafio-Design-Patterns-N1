import UIKit
import DesafioDesignPatterns_N1

let documento2 = "08881145000150"
let digitos = documento2.map { Int(String($0)) }

if let saida = digitos as? [Int] {
 print(saida)
}






// let digitos = documento2.split(separator: "8") // util para separar quando houver 8, por exemplo

//let teste = "paralelepipedo"
//var testeArraySeparado: [String.Element] = []
//
//for letra in teste {
//    testeArraySeparado.append(letra)
//}
//
//print(testeArraySeparado)
