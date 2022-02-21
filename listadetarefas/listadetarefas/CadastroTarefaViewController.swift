//
//  CadastroTarefaViewController.swift
//  listadetarefas
//
//  Created by Nathália Pavani on 18/02/22.
//

import UIKit

class CadastroTarefaViewController: UIViewController {
    
    
    @IBOutlet weak var tarefaCampo: UITextField!
    @IBAction func adicionarTarefa(_ sender: Any) {
        
        if let textoDigitado = tarefaCampo.text {
            
            let tarefa = TarefaUserDefaults()
            tarefa.salvar(tarefa: textoDigitado)
            tarefaCampo.text = ""
            
            let dados = tarefa.listar()
            
            print( dados )
        }
    }

    @IBAction func abrirAlerta(_ sender: UIButton) {
        let alerta = UIAlertController(title: "Créditos", message: "App criado por Nathália Pavani", preferredStyle: .alert)
        
        let confirmar = UIAlertAction(title: "Confirmar", style: .default, handler: nil)
        alerta.addAction(confirmar)
        
        present(alerta, animated: true, completion: nil)
    }
    
        override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
