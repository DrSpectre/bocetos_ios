//
//  ViewController.swift
//  boceto_1
//
//  Created by Jadzia Gallegos on 18/09/24.
//

import UIKit


class ViewController: UIViewController {
    @IBOutlet weak var VistaStack: UIStackView!
    
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
        if let pantalla_agregar_citas = segue.source as? ControladorPantallaAgregarCita{
            citas_disponibles.agregar_cita(pantalla_agregar_citas.cita_creada!)
        }
        
        
        actualizar_cantidad()
        
    }
    
    override func viewDidLayoutSubviews() {
       
        if UIDevice.current.orientation == .portrait {
            VistaStack.axis = .vertical
            
        }
        else {
            VistaStack.axis = .horizontal
        }
        
    }
    
    override func viewWillLayoutSubviews() {
        print("EMpezamos la rotacion de pantalla")
    }
    
}

