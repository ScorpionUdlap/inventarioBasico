//
//  AgregarViewController.swift
//  inventarioBasico
//
//  Created by Manuel on 9/29/19.
//  Copyright © 2019 Manuel. All rights reserved.
//

import UIKit

class AgregarViewController: UIViewController {
    //variables
    
    //botones, ect.
    @IBOutlet weak var ResultadoLabel: UILabel!
    
    @IBOutlet weak var CantidadLabel: UILabel!
    
    @IBOutlet weak var BusquedaTextField: UITextField!
    
    @IBOutlet weak var AmmountTextField: UITextField!
    @IBOutlet weak var BuscarButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        ResultadoLabel.alpha = 0
        CantidadLabel.alpha = 0
        
        style()
    }
    
    func style(){
        Utilities.styleTextField(AmmountTextField)
       Utilities.styleTextField(BusquedaTextField)
        Utilities.styleFilledButton(BuscarButton)
        Utilities.styleLabel(ResultadoLabel)
        Utilities.styleLabel(CantidadLabel)
    }
    

    @IBAction func BuscarButton(_ sender: UIButton) {
        
        var nombreProducto = ""
        
        nombreProducto = BusquedaTextField.text!
        
        let controller: AgregarNuevoViewController = AgregarNuevoViewController()
        
        let cantidad = controller.busqueda(nombreProducto: nombreProducto)
        
        if cantidad >= 0{
            
            ResultadoLabel.text = "Product Found"
            CantidadLabel.text = "Ammount Added"
            
            ResultadoLabel.alpha = 1
            CantidadLabel.alpha = 1
            
            
        }else {
             
            ResultadoLabel.text = "The Product Doesn`t exist"
            
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
