//
//  ViewController.swift
//  boceto_1
//
//  Created by Jadzia Gallegos on 18/09/24.
//

import UIKit

struct elemento: Codable{
    let userId: Int
    let id: Int
    let title: String
    let completed: Bool
    
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
    }


    @IBSegueAction func moviendome_de_pantalla(_ coder: NSCoder) -> ControladorVistaCitas? {
        return ControladorVistaCitas(titulo_secundario: "Nombre barbaro", coder: coder)
    }
    
}

