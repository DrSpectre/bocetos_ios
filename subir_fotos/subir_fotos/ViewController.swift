//
//  ViewController.swift
//  subir_fotos
//
//  Created by Jadzia Gallegos on 30/10/24.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    @IBOutlet weak var contenedor_imagen: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func pusho_picar_para_subir_foto(_ sender: Any) {
        let imagen = UIImagePickerController()
        imagen.delegate = self
        
        imagen.sourceType = UIImagePickerController.SourceType.photoLibrary
        imagen.allowsEditing = false
        self.present(imagen, animated: true) {
            // Al completarse
        }
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let imagen_selecionada = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            contenedor_imagen.image = imagen_selecionada
        }
        
        self.dismiss(animated: true)
    }
    
}

