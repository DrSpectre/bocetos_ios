//
//  ControladorCita.swift
//  boceto_1
//
//  Created by Jadzia Gallegos on 20/09/24.
//

import UIKit

class ControladorVistaCitas: UIViewController {
    @IBOutlet weak var nombre_de_quien_lo_dijo: UILabel!
    @IBOutlet weak var que_dijo_que: UILabel!
    
    var texto: String

    required init?(coder: NSCoder) {
        texto = ""
        super.init(coder: coder)

        print("Algo paso por aqui")
    }
    
    init(titulo_secundario: String, coder: NSCoder){
        texto = titulo_secundario
        
        super.init(coder: coder)!
        

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("Me estoy ejecutando")
        
        nombre_de_quien_lo_dijo.text = texto
    }


}
