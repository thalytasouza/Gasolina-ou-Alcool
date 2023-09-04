import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resultadoLegenda: UILabel!
    @IBOutlet weak var precoAlcoolCampo: UITextField!
    @IBOutlet weak var precoGasolinaCampo: UITextField!
    
    @IBAction func calcularCombustivel(_ sender: Any) {
        
        if let precoAlcool = precoAlcoolCampo.text {
            if let precoGasolina = precoGasolinaCampo.text {
                
                let validaCampos = self.validarCampos(precoAlcool: precoAlcool, precoGasolina: precoGasolina)
                
                if validaCampos {
                    self.calcularMelhorPreco(precoAlcool: precoAlcool, precoGasolina: precoGasolina)
                }else {
                    resultadoLegenda.text = "Digite os preços para calcular!"
                }
            }
        }
    }
        
    func calcularMelhorPreco(precoAlcool: String, precoGasolina: String){
        
        if let valorAlcool = Double(precoAlcool) {
            if let valorGasolina = Double(precoGasolina) {
                
                /*Faz cálculo (precoAlcool / precoGasolina
                 Se resultado >= 0.7 melhor utilizar gasolina
                 senao, melhor utilizar alcool
                 
                 você pode pesquisar na internet outras maneiras de fazer o cálculo, de forma assertiva, passando também quantos km o carro faz com alcool ou gasolina
                 */
                let resultadoPreco = valorAlcool / valorGasolina
                if resultadoPreco >= 0.7 {
                    self.resultadoLegenda.text = "Melhor utilizar Gasolina!"
                }else {
                    self.resultadoLegenda.text = "Melhor utilizar Álcool!"
                }
            }
        }
        
        
    }
    
        func validarCampos(precoAlcool: String, precoGasolina: String) -> Bool{
            
            var camposValidados = true
            
            if precoAlcool.isEmpty {
                camposValidados = false
            } else if precoGasolina.isEmpty {
                camposValidados = false
            }
            
            
            return camposValidados
        }
        
        
    override func viewDidLoad() {
            super.viewDidLoad()
        }
        
    }
    

