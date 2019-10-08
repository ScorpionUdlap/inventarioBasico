//
//  SalidaViewController.swift
//  inventarioBasico
//
//  Created by Manuel on 9/29/19.
//  Copyright © 2019 Manuel. All rights reserved.
//

import UIKit

class SalidaViewController: UIViewController {
    
    //botones, etc.
    
    
    @IBOutlet weak var ResultadoLabel: UILabel!
    
    @IBOutlet weak var NombreTextField: UITextField!
    
    @IBOutlet weak var BuscarButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        ResultadoLabel.alpha = 0
        style()
    }
    
    func style(){
        
        Utilities.styleTextField(NombreTextField)
        Utilities.styleFilledButton(BuscarButton)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func BuscarButton(_ sender: UIButton) {
        
        var nombreProducto = ""
        
        nombreProducto = NombreTextField.text!
        
        let controller: AgregarNuevoViewController = AgregarNuevoViewController()
        
        let cantidad = controller.busqueda(nombreProducto: nombreProducto)
        
        if cantidad >= 0{
            
            ResultadoLabel.text = "Exit Sucessfull"
            
            ResultadoLabel.alpha = 1
            
            
        }else {
             
            ResultadoLabel.text = "The Product Does not Exist"
            
            ResultadoLabel.alpha = 1
        }
    }
    
}
