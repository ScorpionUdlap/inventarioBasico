//
//  BuscarViewController.swift
//  inventarioBasico
//
//  Created by Manuel on 9/29/19.
//  Copyright © 2019 Manuel. All rights reserved.
//

import UIKit

class BuscarViewController: UIViewController {

    //botones, etc.
    
    @IBOutlet weak var ResultadoLabel: UILabel!
    
    @IBOutlet weak var CantidadLabel: UILabel!
    
    @IBOutlet weak var NombreTextField: UITextField!
    
    @IBOutlet weak var BuscarButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        ResultadoLabel.alpha = 0
        CantidadLabel.alpha = 0
        
        style()
    }
    
    func style(){
        
        Utilities.styleTextField(NombreTextField)
        Utilities.styleFilledButton(BuscarButton)
    }
    
    @IBAction func BuscarButton(_ sender: Any) {
        var nombreProducto = ""
        
        nombreProducto = NombreTextField.text!
        
        let controller: AgregarNuevoViewController = AgregarNuevoViewController()
        
        let cantidad = controller.busqueda(nombreProducto: nombreProducto)
        
        if cantidad >= 0{
            
            ResultadoLabel.text = "Product Found"
            CantidadLabel.text = "Units: \(cantidad)"
            
            ResultadoLabel.alpha = 1
            CantidadLabel.alpha = 1
            
            
        }else {
             
            ResultadoLabel.text = "The Product Does not exist"
            
            ResultadoLabel.alpha = 1
            CantidadLabel.alpha = 0
        }
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
