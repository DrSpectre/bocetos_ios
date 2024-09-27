//
//  ViewController.swift
//  boceto_1
//
//  Created by Jadzia Gallegos on 18/09/24.
//

import UIKit


class ViewController: UIViewController {
    var cita_para_enviar: Cita = Cita(quien_lo_dijo: "Creeper", que_dijo: "Tssseñor")
    var citas_disponibles: GeneradorDeCitas = GeneradorDeCitas()
    var numero_aleatorio: Int = Int.random(in: 0...25)
    
    @IBOutlet weak var labelcito: UILabel!
    
    override func viewDidLoad() {
        citas_disponibles.generar_citas_falsas()
    
        super.viewDidLoad()
        
        actualizar_cantidad()
    }
    
    func actualizar_cantidad(){
        labelcito.text = String(citas_disponibles.citas_creadas.count)
    }

    
    @IBSegueAction func al_abrir_pantalla_citas(_ coder: NSCoder) -> ControladorPantallaCitas? {
        return ControladorPantallaCitas(cita_para_citar: citas_disponibles.obtener_cita_aleatoria()
                                        , coder: coder)
    }
    
    
    @IBAction func voler_a_pantalla_inicio(segue: UIStoryboardSegue){
        let pantalla_citas = segue.source as? ControladorPantallaCitas
        // print(pantalla_citas?.cita_actual.texto)
        
        /*
        if let pantalla_citas = segue.source as? ControladorPantallaCitas {
            citas_disponibles.agregar_cita(pantalla_citas.cita_actual.texto,
                                           quien_lo_dijo: pantalla_citas.cita_actual.nombre)
        }
        else{
            print("Eso no era un objeto de tipo <ControladorPantallaCitas>")
        }
         */
        
        
        actualizar_cantidad()
        
    }
    
    /*@IBAction func regresar(segue: UIStoryboardSegue){
        print("En esto del proceso")
        print(segue.source as? ControladorPantallaCitas)
        let elemento = segue.source as? ControladorPantallaCitas
        print(elemento?.cita_actual.nombre)
    }*/
    
}

